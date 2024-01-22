//@ts-nocheck

import * as fs from "fs/promises"
import path from "path"
// utlities 


import loader from '@assemblyscript/loader'
import Path, { dirname } from 'path'
import { fork, ChildProcess } from 'child_process'
import { fileURLToPath } from 'url';
import EventEmitter from 'events'
import Crypto from 'crypto'

import base64 from "base-64"
import utf8 from "utf8"
import pkg from '@summa-tx/bitcoin-spv-js';
import { Obj } from "assemblyscript-json/assembly/JSON"
import asc from "assemblyscript/dist/asc"
import { BTCBlockStream } from "./bitcoin-utils"
const { BTCUtils, ValidateSPV, deserializeSPVProof } = pkg;

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


/**
 * Copyright 2019 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Put `__asyncify_data` somewhere at the start.
// This address is pretty hand-wavy and we might want to make it configurable in future.
// See https://github.com/WebAssembly/binaryen/blob/6371cf63687c3f638b599e086ca668c04a26cbbb/src/passes/Asyncify.cpp#L106-L113
// for structure details.
const DATA_ADDR = 16
// Place actual data right after the descriptor (which is 2 * sizeof(i32) = 8 bytes).
const DATA_START = DATA_ADDR + 8
// End data at 1024 bytes. This is where the unused area by Clang ends and real stack / data begins.
// Because this might differ between languages and parameters passed to wasm-ld, ideally we would
// use `__stack_pointer` here, but, sadly, it's not exposed via exports yet.
const DATA_END = 1024

const WRAPPED_EXPORTS = new WeakMap()

const State = {
  None: 0,
  Unwinding: 1,
  Rewinding: 2,
}

function isPromise(obj) {
  return (
    !!obj &&
    (typeof obj === 'object' || typeof obj === 'function') &&
    typeof obj.then === 'function'
  )
}

function proxyGet(obj, transform) {
  return new Proxy(obj, {
    get: (obj, name) => transform(obj[name]),
  })
}

class Asyncify {
  exports: any
  value: any
  constructor() {
    this.value = undefined
    this.exports = null
  }

  getState() {
    return this.exports.asyncify_get_state()
  }

  assertNoneState() {
    let state = this.getState()
    if (state !== State.None) {
      throw new Error(`Invalid async state ${state}, expected 0.`)
    }
  }

  wrapImportFn(fn) {
    return (...args) => {
      if (this.getState() === State.Rewinding) {
        this.exports.asyncify_stop_rewind()
        return this.value
      }
      this.assertNoneState()
      let value = fn(...args)
      if (!isPromise(value)) {
        return value
      }
      this.exports.asyncify_start_unwind(DATA_ADDR)
      this.value = value
    }
  }

  wrapModuleImports(module) {
    return proxyGet(module, (value) => {
      if (typeof value === 'function') {
        return this.wrapImportFn(value)
      }
      return value
    })
  }

  wrapImports(imports) {
    if (imports === undefined) return

    return proxyGet(imports, (moduleImports = Object.create(null)) =>
      this.wrapModuleImports(moduleImports),
    )
  }

  wrapExportFn(fn) {
    let newExport = WRAPPED_EXPORTS.get(fn)

    if (newExport !== undefined) {
      return newExport
    }

    newExport = async (...args) => {
      this.assertNoneState()

      let result = fn(...args)

      while (this.getState() === State.Unwinding) {
        this.exports.asyncify_stop_unwind()
        this.value = await this.value
        this.assertNoneState()
        this.exports.asyncify_start_rewind(DATA_ADDR)
        result = fn()
      }

      this.assertNoneState()

      return result
    }

    WRAPPED_EXPORTS.set(fn, newExport)

    return newExport
  }

  wrapExports(exports) {
    let newExports = Object.create(null)

    for (let exportName in exports) {
      let value = exports[exportName]
      if (typeof value === 'function' && !exportName.startsWith('asyncify_')) {
        value = this.wrapExportFn(value)
      }
      Object.defineProperty(newExports, exportName, {
        enumerable: true,
        value,
      })
    }

    WRAPPED_EXPORTS.set(exports, newExports)

    return newExports
  }

  init(instance, imports) {
    const { exports } = instance

    const memory = exports.memory || (imports.env && imports.env.memory)

    new Int32Array(memory.buffer, DATA_ADDR).set([DATA_START, DATA_END])

    this.exports = this.wrapExports(exports)

    Object.setPrototypeOf(instance, Instance.prototype)
  }
}

export class Instance extends WebAssembly.Instance {
  constructor(module, imports) {
    let state = new Asyncify()
    super(module, state.wrapImports(imports))
    state.init(this, imports)
  }

  get exports() {
    return WRAPPED_EXPORTS.get(super.exports)
  }
}


export async function instantiate(source, imports) {
  let state = new Asyncify()
  let result = await loader.instantiate(source, state.wrapImports(imports))
  state.init(result instanceof WebAssembly.Instance ? result : result.instance, imports)
  return result
}

export async function instantiateStreaming(source, imports) {
  let state = new Asyncify()
  let result = await loader.instantiateStreaming(source, state.wrapImports(imports))
  state.init(result.instance, imports)
  return result
}

enum CallResultError {
  TIMEOUT = 'timeout'
}

export enum ContractErrorType {
  //If transaction attempts to call invalid runtime function.
  INVALID_ACTION = -1,
  //Input data does not meet valiation requirements
  INVALID_INPUT = -2,
  //Any arbitrary exception occurred within the smart contract 
  RUNTIME_EXCEPTION = -3,
  //Code error if WASM imports or attempts to use unavailable bindings.
  RUNTIME_SETUP = -4,
  //Unknown runtime error occurrs.
  RUNTIME_UNKNOWN = -5,
  //If overall VM becomes frozen a timeout is issued.
  TIMEOUT = -6,
  //If contract returns none JSON or other accepted format
  INVALID_RETURN = -7,


  //Reserved for future use.
  //If contract over uses gas or TX does not have enough gas.
  GAS_EXHAUSTED = -20

}

interface VmCallResult {
  code: number
  result: string
  logs: Array<string>
  err: null | CallResultError
}

export class VmContainer {
  proc: {
    start_time: Date
    timer_pid: number
  }
  child: ChildProcess
  opts: {
    contract_id: string
    state_merkle: string
    cid: string
  }
  ready: boolean
  events: EventEmitter;
  reqId: string;
  startTime: Date | null;

  constructor(opts) {
    this.opts = opts
    this.events = new EventEmitter()
  }

  async call(args: {
    action: string
    payload: string
  }) {
    let reqId = Crypto.randomBytes(8).toString('base64url')
    this.reqId = reqId
    this.startTime = new Date();
    this.child.send({
      type: "call",
      action: args.action,
      payload: args.payload,
      reqId
    });
    const timeoutPid = setInterval(() => {
      const lag = new Date().getTime() - this.startTime.getTime();
      if (lag > 50) {
        this.events.emit('timeout', {
          type: 'timeout'
        })
      }
    }, 1)
    const executeStop = await new Promise<{
      type: string
      ret: string | null
      logs: Array<string>
      error: any
      errorType: ContractErrorType
      reqId: string
      IOGas: number
    } | null>((resolve, reject) => {
      this.events.once('execute-stop', (result0) => {
        resolve(result0)
        clearInterval(timeoutPid)
      })
      this.events.once('timeout', (resultErr) => {
        resolve(resultErr)
        clearInterval(timeoutPid)
      })
    })

    console.log('finish', executeStop, new Date().getTime() - this.startTime.getTime())
    return executeStop
  }

  async finish() {
    if (this.child.connected) {
      this.child.send({
        type: 'finish'
      })
      const result = await new Promise<{
        stateMerkle: string
      }>((resolve, reject) => {
        this.events.once('finish-result', (result0) => {
          console.log('finish-result', this.child.connected)
          resolve(result0)
        })
        this.events.once('timeout', (resultErr) => {
          resolve(resultErr)
        })
      })
      return result;
    } else {
      return null;
    }
  }

  async finishAndCleanup() {
    const val = await this.finish()
    this.cleanup()

    return val.stateMerkle;
  }

  async init() {

    const parameters = [];

    const partPath = Path.join(__dirname, 'vm-runner.js').replace('src', 'dist')

    const child = fork(partPath, parameters, {
      env: {
        cid: this.opts.cid,
        contract_id: this.opts.contract_id
      } as any,
      // silent: true,
      detached: false
    });
    this.child = child;
    this.child.on('message', (message: any) => {
      if (message.type === 'ready') {
        this.ready = true
        this.events.emit('ready')
      }
      if (message.type === 'finish-result') {
        this.events.emit('finish-result', message)
      }
      if (message.type === 'execute-stop') {
        this.events.emit('execute-stop', message)
      }
    })
  }

  cleanup() {
    this.child.kill()
  }

  onReady() {
    return new Promise((resolve) => {
      this.events.on('ready', resolve)
    })
  }
}

//-------------
let stateCache = new Map<string, string>();

void (async () => {
  console.log('init')


  const binaryData = await fs.readFile("./build/release.wasm")
  console.log("Release file is read as \n------- ", binaryData, "\n--------");
  const module = await WebAssembly.compile(binaryData)

  async function call(action: string, payload: any) {
    console.log("inside call fn : calling ", action, " with arguments ", payload);

    const memory = new WebAssembly.Memory({
      initial: 10,
      maximum: 128,
    })


    let IOGas = 0;
    let error;
    const logs = []



    try {
      /**
       * Helping functions
       */
      function reverseBytes(str: string) {
        return Buffer.from(str, 'hex').reverse().toString('hex');
      }

      /**--------- */
      const insta = await loader.instantiate(binaryData, {
        env: {
          memory,
          abort(msg, file, line, colm) {
            console.log((insta.exports as any).__getString(msg), 'LN1', (insta.exports as any).__getString(file), line, colm)
            console.log('error happened');
            error = {
              msg: (insta.exports as any).__getString(msg),
              file: (insta.exports as any).__getString(file),
              line,
              colm
            }
          },
          //Prevent AS loader from allowing any non-deterministic data in.
          seed: () => {
            return 0;
          },
        },
        //Same here
        Date: {
          getISODate: (timestamp) => {
            let epochTime = insta.exports.__getString(timestamp)
            console.log("time stamp is ", epochTime);

            return insta.exports.__newString(new Date(parseInt(epochTime)).toISOString())
          },

        },
        Math: {},
        bitcoin: {

          Uint8ArrayFromBufferHex: (hex: number) => {


            function makeAscArray(instance: any, arr: Uint8Array) {
              try {
                let arrptr = instance.exports.__newArrayBuffer(new ArrayBuffer(arr.length))

                for (let index = 0; index < arr.length; index++) {
                  const element = arr[index];
                  (instance.instance.exports as any).setU8(arrptr, index, element)
                }
                return arrptr;
              }
              catch (e) {
                console.log("error in asc Array creation : ", e);

              }

            }

            try {
              let value = insta.exports.__getString(hex)
              const decodeHex = new Uint8Array(Buffer.from(value, 'hex'))
              let asc_ptr = makeAscArray(insta, decodeHex)
              // let arrContent = insta.exports.__getArrayBuffer(asc_ptr)
              // console.log("Array made as ", arrContent);
              // console.log("returning ", asc_ptr);

              return asc_ptr
            } catch (error) {
              console.log(" Error in Uint8ArrayFromBuffer ", error);
              return null
            }


          }
          ,

          base64: (str) => {
            let text = base64.decode(insta.exports.__getString(str))
            console.log({ text });

            return insta.exports.__newString(text)
          },

          extractPrevBlockLE: (_decodeHex) => {
            let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);
            // console.log("extracting prevBlock from ", decodeHex);


            const prevBlock = reverseBytes(BTCUtils.extractPrevBlockLE(decodeHex));
            // console.log("prevblock", prevBlock);

            return insta.exports.__newString(prevBlock)
          },

          extractTimestampStr: (_decodeHex) => {
            let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);

            const timestamp = parseInt(reverseBytes(BTCUtils.extractTimestampLE(decodeHex)), 16)
            // console.log("timestamp", timestamp);
            return insta.exports.__newString(String(timestamp * 1000))

          },
          extractTimestampEpoch: (_decodeHex) => {
            let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);

            const timestamp = parseInt(reverseBytes(BTCUtils.extractTimestampLE(decodeHex)), 16)
            // console.log("timestamp", timestamp);
            return timestamp

          },
          
          
          extractMerkleRootLE: (_decodeHex) => {
            let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);

            const merkleRoot = reverseBytes(BTCUtils.extractMerkleRootLE(decodeHex))
            // console.log("merkleroot", merkleRoot);

            return insta.exports.__newString(merkleRoot)

          },
          hash256: (_decodeHex) => {
            let decodeHex: ArrayBuffer = insta.exports.__getArrayBuffer(_decodeHex);
            // Example ArrayBuffer
            const uint8Array = new Uint8Array(decodeHex);

            // Convert ArrayBuffer to array
            const arrayFromBuffer: number[] = Array.from(uint8Array);
            const uint8Array_buffer = Uint8Array.from(arrayFromBuffer);
            // console.log("creating header hash from ts uint8array ", uint8Array_buffer);

            const headerHash = reverseBytes(BTCUtils.hash256(uint8Array_buffer));
            // console.log("headerhash ", headerHash);
            // utils.bitcoin.BTCUtils.hash256(decodeHex)

            return insta.exports.__newString(headerHash)

          }
          ,
          validateHeaderChain: (_decodeHex) => {
            // console.log("hex value is ", _decodeHex);
            let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);
            // console.log("validating ", decodeHex);
            const uint8Array = new Uint8Array(decodeHex);

            // Convert ArrayBuffer to array
            const arrayFromBuffer: number[] = Array.from(uint8Array);
            const uint8Array_buffer = Uint8Array.from(arrayFromBuffer);
            // console.log("validating headerchain from ts uint8array ", uint8Array_buffer);

            const diff = parseInt(ValidateSPV.validateHeaderChain(uint8Array_buffer))
            // console.log("diff", diff);


            return diff;
          },
          isValidProof: (proof) => {
            return ValidateSPV.validateProof(deserializeSPVProof(JSON.stringify(proof)))
          },
        },
        sdk: {
          'console.log': (keyPtr) => {
            const logMsg = (insta as any).exports.__getString(keyPtr)
            logs.push(logMsg)
            IOGas = IOGas + logMsg.length
          },
          'console.logNumber': (val) => {
            logs.push(val)
          },
          'console.logUint8Array': (val) => {
            let arrContent = (insta as any).exports.__getArrayBuffer(val)
            console.log("  ", arrContent);

            for (let j = 0; j < arrContent.length; j++) {
              const element = arrContent[j];
              console.log(element);

              logs.push(element)

            }

          },

          'console.logBool': (val) => {
            logs.push(Boolean(val))
          },
          'db.setObject': (keyPtr, valPtr) => {

            const key: string = (insta as any).exports.__getString(keyPtr)
            const val: string = (insta as any).exports.__getString(valPtr)
            // console.log("setting ", key, " to ", val);

            IOGas = IOGas + key.length + val.length

            stateCache.set(key, val)
            return 1
          },
          'db.getObject': (keyPtr) => {
            const key = (insta as any).exports.__getString(keyPtr)

            let value: string;
            if (stateCache.has(key))
              value = (stateCache.get(key))
            else
              value = '{}'


            IOGas = IOGas + (value != '{}' ? value.length : 0); // Total serialized length of gas

            let retVal = (insta as any).exports.__newString(value)
            // console.log("returning getObject as ", value, retVal, " for ", key);

            return retVal
          },
        },
      } as any)


      if (!insta.instance.exports[action]) {
        return {
          type: 'execute-stop',
          ret: null,
          errorType: ContractErrorType.INVALID_ACTION,
          logs,
          IOGas: 0,
        }
      }
      let ptr;
      try {
        ptr = await (insta.instance.exports[action] as any)
          ( payload && (insta as any).exports.__newString(JSON.stringify(payload)))

        const str = (insta as any).exports.__getString(ptr)
        return {
          type: 'execute-stop',
          ret: str,
          logs,
          IOGas,
        }
      } catch (ex) {
        console.log("error detected ", ex);

        if (ex.name === "RuntimeError" && ex.message === "unreachable") {
          console.log(`RuntimeError: unreachable ${JSON.stringify(error)}`, error)
          return {
            type: 'execute-stop',
            ret: null,
            error: error,
            errorType: ContractErrorType.RUNTIME_EXCEPTION,
            logs,
            IOGas,
          }
        } else {
          return {
            type: 'execute-stop',
            ret: null,
            errorType: ContractErrorType.RUNTIME_UNKNOWN,
            logs,
            IOGas,
          }
        }
      }

    } catch (ex) {
      console.log("error detected ", ex)
      return {
        type: 'execute-stop',
        ret: null,
        logs,
        errorType: ContractErrorType.RUNTIME_SETUP,
        IOGas,
      }
    }
  }
  //Run your tests here

  // const result = await call('main')
  console.log("calling btc block_stream");
  const abortController = new AbortController()
  let headerBulk = []
  let busyPromise = null;
  let topBlock = 0
  let totalBlocksStreamed=0
  let blockRound={}
  for await (let header of BTCBlockStream({
    height: topBlock + 1,
    signal: abortController.signal,
    continueHead: true,
  })) {
    
    totalBlocksStreamed+=1
    blockRound[totalBlocksStreamed]=header.rawData;

    console.log(totalBlocksStreamed);
    
    if (totalBlocksStreamed == 15) {
      // console.log("call process headers after ");
      const result = await call('main',(blockRound))
      console.log(result);
      
      blockRound={}
      totalBlocksStreamed=0
      break;
      // busyPromise = processHeadersTx()
    }
    if (busyPromise) {
      await busyPromise
      busyPromise = null
      break
    }
  }
  // console.log(res);


  // console.log(result)
})()