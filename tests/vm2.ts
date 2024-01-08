import asc from "assemblyscript/dist/asc";
import loader from '@assemblyscript/loader'
import Axios from 'axios'
import fs from 'fs/promises'
import base64 from "base-64"
import utf8 from "utf8"
import { utils, BTCUtils, ser, ValidateSPV ,deserializeSPVProof} from '@summa-tx/bitcoin-spv-js'


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
const DATA_ADDR = 16;
// Place actual data right after the descriptor (which is 2 * sizeof(i32) = 8 bytes).
const DATA_START = DATA_ADDR + 8;
// End data at 1024 bytes. This is where the unused area by Clang ends and real stack / data begins.
// Because this might differ between languages and parameters passed to wasm-ld, ideally we would
// use `__stack_pointer` here, but, sadly, it's not exposed via exports yet.
const DATA_END = 1024;

const WRAPPED_EXPORTS = new WeakMap();

const State = {
  None: 0,
  Unwinding: 1,
  Rewinding: 2
};

// interface UtilsInterface {
//   SHA256: (input: string) => string
//   bitcoin: {
//     ValidateSPV
//     BTCUtils
//     SPVUtils
//     reverseBytes
//     ser
//   }
// }
// declare global {
//   var utils: UtilsInterface

// }


function isPromise(obj) {
  return (
    !!obj &&
    (typeof obj === 'object' || typeof obj === 'function') &&
    typeof obj.then === 'function'
  );
}

function proxyGet(obj, transform) {
  return new Proxy(obj, {
    get: (obj, name) => transform(obj[name])
  });
}

class Asyncify {
  exports: any;
  value: any;
  constructor() {
    this.value = undefined;
    this.exports = null;
  }

  getState() {
    return this.exports.asyncify_get_state();
  }

  assertNoneState() {
    let state = this.getState();
    if (state !== State.None) {
      throw new Error(`Invalid async state ${state}, expected 0.`);
    }
  }

  wrapImportFn(fn) {
    return (...args) => {
      if (this.getState() === State.Rewinding) {
        this.exports.asyncify_stop_rewind();
        return this.value;
      }
      this.assertNoneState();
      let value = fn(...args);
      if (!isPromise(value)) {
        return value;
      }
      this.exports.asyncify_start_unwind(DATA_ADDR);
      this.value = value;
    };
  }

  wrapModuleImports(module) {
    return proxyGet(module, value => {
      if (typeof value === 'function') {
        return this.wrapImportFn(value);
      }
      return value;
    });
  }

  wrapImports(imports) {
    if (imports === undefined) return;

    return proxyGet(imports, (moduleImports = Object.create(null)) =>
      this.wrapModuleImports(moduleImports)
    );
  }

  wrapExportFn(fn) {
    let newExport = WRAPPED_EXPORTS.get(fn);

    if (newExport !== undefined) {
      return newExport;
    }

    newExport = async (...args) => {
      this.assertNoneState();

      let result = fn(...args);

      while (this.getState() === State.Unwinding) {
        this.exports.asyncify_stop_unwind();
        this.value = await this.value;
        this.assertNoneState();
        this.exports.asyncify_start_rewind(DATA_ADDR);
        result = fn();
      }

      this.assertNoneState();

      return result;
    };

    WRAPPED_EXPORTS.set(fn, newExport);

    return newExport;
  }

  wrapExports(exports) {
    let newExports = Object.create(null);

    for (let exportName in exports) {
      let value = exports[exportName];
      if (typeof value === 'function' && !exportName.startsWith('asyncify_')) {
        value = this.wrapExportFn(value);
      }
      Object.defineProperty(newExports, exportName, {
        enumerable: true,
        value
      });
    }

    WRAPPED_EXPORTS.set(exports, newExports);

    return newExports;
  }

  init(instance, imports) {
    const { exports } = instance;

    const memory = exports.memory || (imports.env && imports.env.memory);

    new Int32Array(memory.buffer, DATA_ADDR).set([DATA_START, DATA_END]);

    this.exports = this.wrapExports(exports);

    Object.setPrototypeOf(instance, Instance.prototype);
  }
}


export class Instance extends WebAssembly.Instance {
  constructor(module, imports) {
    let state = new Asyncify();
    super(module, state.wrapImports(imports));
    state.init(this, imports);
  }

  get exports() {
    return WRAPPED_EXPORTS.get(super.exports);
  }
}

Object.defineProperty(Instance.prototype, 'exports', { enumerable: true });

export async function instantiate(source, imports) {
  let state = new Asyncify();
  let result = await loader.instantiate(
    source,
    state.wrapImports(imports)
  );
  state.init(
    result instanceof WebAssembly.Instance ? result : result.instance,
    imports
  );
  return result;
}

export async function instantiateStreaming(source, imports) {
  let state = new Asyncify();
  let result = await WebAssembly.instantiateStreaming(
    source,
    state.wrapImports(imports)
  );
  state.init(result.instance, imports);
  return result;
}

const helloCallback = () => {
  console.log("hello")
}

void (async () => {
  // loader.instantiate
  const data = await asc.compileString(`
        declare function consoleLogObject(arg0: Map<string,string>): void;
        declare function consoleLog(arg0: String): void;
        declare function consoleLogPropertyString(arg0: String,arg1:String): void
        declare function consoleLogPropertyNumber(arg0: String,arg1:u64 ): void
        declare function Uint8ArrayFromBufferHex(arg0:string):Uint8Array
        declare function logNumber(arg0: i32): void;
        declare function logBool(arg0: bool): void;
        declare function logUint8Array(arg0: Uint8Array): void;
        declare function api(): string
        declare function base64(str:string):string
        declare function getISODate(timestamp:string):string
        declare function jsCallback():any

        declare function extractPrevBlockLE(decodeHex:Uint8Array):string
        declare function extractTimestampStr(decodeHex:Uint8Array):string
        declare function extractMerkleRootLE(decodeHex:Uint8Array):string
        declare function hash256(decodeHex:Uint8Array):string
        declare function validateHeaderChain(decodeHex:Uint8Array):number
        declare function isValidProof(proof:any):bool

        declare namespace db {
            function setObject(key: String, val: String): i32
            function getObject(key: String): String
        }
        const validity_depth = 2;
        const headersState =new Map<string, Map<u64,string> >()
        

        function concat(strings: Array<string>): string {
          let res: string = "";
        
          for (let j = 0; j < strings.length; j++) {
            res = res.concat(strings[j].toString());
        
          }
          return res;
        
        }
        function calcKey(height: u64): string {
          const cs = 100
          const keyA = (Math.floor(f64(height / cs)) * cs).toString()
        
          return concat([keyA, "-", concat([keyA, cs.toString()])])
        }
        
        export class Header{
          prevBlock: string;
          timestamp: string ;
          merkleRoot: string;
          diff: u64;
          totalDiff: u64;
          height: u64;
          raw: string;
          print(): void {
            consoleLog(" ------------- Printing Header -------------")
            consoleLogPropertyString("prevBlock",this.prevBlock);
            consoleLogPropertyString("merkleRoot",this.merkleRoot);
            consoleLogPropertyString("raw",this.raw);
            consoleLogPropertyString("timestamp",this.timestamp)
            
            consoleLogPropertyNumber("diff",this.diff)
            consoleLogPropertyNumber("totalDiff",this.totalDiff)
            consoleLogPropertyNumber("height",this.height)
            consoleLog(" ------------- ---------- -------------")

          }
          
        }
        export function dummyHeaders():Array<Header>  {
          let headers: Array<Header> = [
            {
              prevBlock: "2000000000000000000000000000000000000000000000000000000000000000",
              timestamp: "12-12-2000",
              merkleRoot: "4e5c75b44b0923a92126c0296b528d8843fd6676d9ad37031e7fa96505f88d1f",
              diff: (1677022373) ,
              totalDiff: (9623412) ,
              height: (1677022373) ,
              raw: "dummy raw data",
            },
            {
              prevBlock: "0000000000000000000000000000000000000000000000000000000000000000",
              timestamp: "12-12-2000",
              merkleRoot: "4t5c75b44b0923a92126c0296b528d8843fd6676d9ad37031e7fa96505f88d1f",
              diff: (1877022373) ,
              totalDiff: (8623412) ,
              height: (2077022373) ,
              raw: "dummy raw data",


            }
            
          ];

          return headers;
        }
        
        
        function pull(informationString: string): Array<Header>  {
        
          if (informationString == "pre-headers/main") {
            let res:Array<Header>  = dummyHeaders();
          }
          return dummyHeaders();
        }
    function update(command:string,val:Header):void{

    }
    function updatePreheaders(command:string,val:Map<string,Header>):void{

    }
 function pullHeaderKey(command:string):Map<u64,string>{
  let headerKeyMap=new Map<u64,string>()
  headerKeyMap.set(0,"hello");
  return headerKeyMap
 }

        class BTCHeader{
          headers:Array<string>;
          constructor(_headers:Array<string>){
            this.headers=_headers;
          }
        }
         function doesPrevBlockExists(headers:Array<Header>,prevBlock:string):bool{
          for(let i:i32=0;i<headers.length;i=i+1){
            if(headers[i].prevBlock==prevBlock){
              return true
            }
          }
          return false
         }
         function getHeaderViaPrevBlock(headers:Array<Header>,prevBlock:string):Header{
          for(let i:i32=0;i<headers.length;i=i+1){
            if(headers[i].prevBlock==prevBlock){
              return headers[i]
            }
          }
          let emptyHeader:Header={
            prevBlock: "0000000000000000000000000000000000000000000000000000000000000000",
            timestamp: "" ,
            merkleRoot: "0000000000000000000000000000000000000000000000000000000000000000",
            diff: 0 ,
            totalDiff: 0 ,
            height: 0 ,
            raw: "",
          }

          return emptyHeader;
         }
        function sortMap(a,b):Number{
          return Number((a as any).totalDiff - (b as any).totalDiff);
        
        }
        
        function processHeaders(args: BTCHeader):void {
          // const preHeaders: Array<Header>  = [pull("pre-headers/main") ];
          var preHeaders = new Map<string,Header>()
          let headers:Array<string>=args.headers
          for(let i:i32=0;i<headers.length;i=i+1){
            consoleLog("For Header ");
            logNumber(i)
            let rawBH:string=headers[i];
            // consoleLog(rawBH)
            let decodeHex:Uint8Array = Uint8ArrayFromBufferHex(rawBH);
            const prevBlock = extractPrevBlockLE(decodeHex);
            const timestamp:string =  extractTimestampStr(decodeHex)
            const merkleRoot = extractMerkleRootLE(decodeHex)
            const headerHash = hash256(decodeHex);
            let diff:u64=u64(i);
            // TODO : get diff calculation to work
            // diff = u64(validateHeaderChain(decodeHex))
            let prevDiff:u64=0;
            let prevHeight:u64=0;
            if(prevBlock === '0000000000000000000000000000000000000000000000000000000000000000') {
                prevDiff = 0;
                prevHeight = -1;
            } else if( preHeaders.has(prevBlock)  ) {
              let h:Header=preHeaders.get(prevBlock);
                prevDiff = u64(h.totalDiff)
                prevHeight = h.height
            } else {
                // continue;
            }
            
            let decodedHeader:Header = {
              prevBlock: prevBlock,
              timestamp:getISODate(timestamp),
              merkleRoot,
              diff,
              totalDiff: diff + prevDiff,
              height: prevHeight + 1,
              raw: rawBH
          }
          preHeaders.set(prevBlock,decodedHeader) 

          }
          var preHeaderValues:Array<Header>=preHeaders.values()
          var mapKeys:Array<string>=preHeaders.keys()
          var mapValues:Array<Header>=preHeaders.values()
          for(let i:i32=0;i<mapValues.length;i=i+1){
              let header1:Header=mapValues[i]
              for(let j:i32=0;j<mapValues.length;j=j+1){
                let header2:Header=mapValues[j]
                if(header1.totalDiff - header2.totalDiff){
                  var temp:Header=header1;
                  mapValues[j]=temp
                  mapValues[i]=header2
                  
                }
              
              }
          }

          // mapValues is sorted
          const topHeader = mapValues[mapValues.length - 1]
          logNumber(mapValues.length)

          let blocksToPush = new Array<Header>(mapValues.length)
          let curDepth = 0;
          let prevBlock=topHeader;
          let idx:i32=0
          for( ; ; ) {
            if(idx>=mapValues.length){
              break;
            }
              if(preHeaders.has(prevBlock.prevBlock)) {
                  if(curDepth > validity_depth && idx<mapValues.length) {
                      blocksToPush[idx++]=preHeaders.get(prevBlock.prevBlock)
                  } else {
                      curDepth = curDepth + 1;
                  }
              } else {
                  break;
              }
              prevBlock = preHeaders.get(prevBlock.prevBlock)
          }
          consoleLog("Added blocks")
          for(let i:i32=0;i<blocksToPush.length;i=i+1){
            let header:Header=blocksToPush[i]
            header.print()
          }

          let highestHeight :u64= 0;
          for(let i:i32=0;i<blocksToPush.length;i=i+1){
            let block:Header=blocksToPush[i]         
              const key = calcKey(block.height)
              //Get headers in memory if not available
              if(!headersState.has(key) ) {
                let command: string = "headers/";
                let stringKey:string=key.toString();
                command.concat(stringKey)
        
                  headersState.set(key, pullHeaderKey(command))
              }
              //Only override if not
              if(headersState.has(key) && !headersState.get(key).has(block.height) ) {
                  headersState.set(key,
                    headersState.get(key).set(
                      block.height,block.raw
                      ) 
                      )
              }
              if(highestHeight < block.height) {
                  highestHeight = block.height
              }
              // headersState[calcKey(block.height as number)] = block.raw
          }
      
          for(let i:i32=0; i< preHeaders.keys().length;i=i+1) {
            let key:string=preHeaders.keys()[i]        

            let height=preHeaders.get(key).height
              if(highestHeight >= height) {
                  consoleLogPropertyNumber("old highestHeight",highestHeight)
                  consoleLogPropertyNumber("new highest",height)            
                  preHeaders.delete(key);
              }
          }
      
          for(let i:i32=0; i< headersState.keys().length;i=i+1) {
            let key:string=headersState.keys()[i] 
            let val=preHeaders.get(key)

              let command: string = "headers/";
              let stringKey:string=key.toString();
              command.concat(stringKey)
              update(command,val) 
              // headersState[key] = update(command,val) 
              
          }
          
          updatePreheaders('pre-headers/main', preHeaders)
      
          
}
        // Utility function
        export function setU8(arr:ArrayBuffer, idx:u8,value:u8):void{
          var dv = new DataView(arr);
          dv.setUint8(idx,value)           
        }
        export function getU8(arr:ArrayBuffer, idx:u8):u8{
          var dv = new DataView(arr);
          return dv.getUint8(idx) 
      }
      
  export function validateTxProof(args) {
        const {proof} = args
        let command: string = "headers/";
        let stringKey:string=calcKey(proof.confirming_height).toString();
        command.concat(stringKey)
        const bundleHeaders = pull(command) 
    
        const header = bundleHeaders[proof.confirming_height]
    
    
        const decodeHex:Uint8Array = Uint8ArrayFromBufferHex(header)        
        let decodeHex:Uint8Array = Uint8ArrayFromBufferHex(rawBH);
        const prevBlock = extractPrevBlockLE(decodeHex);
        const timestamp:string =  extractTimestampStr(decodeHex)
        const merkleRoot = extractMerkleRootLE(decodeHex)
        const headerHash = hash256(decodeHex);

        const confirming_header = {
            raw: header,
            hash: headerHash,
            height: proof.confirming_height,
            prevhash: prevBlock,
            merkle_root: merkleRoot,
        }
    
        const fullProof = {
            ...proof,
            confirming_header
        }
        let validProof = isValidProof(fullproof)

        if(validProof) {
          let command: string = "txs/";
          let stringKey:string=proof.tx_id.toString();
          command.concat(stringKey)  
          update(command, proof)
        }
    }
    
       export function main():void{
        let args:BTCHeader=new BTCHeader([
          "00400a20a141199637ef910d71c62c22cf3041da4f1adf3e0d6d03000000000000000000185f7f2ccdd1d6c656962be8bdb432cc2c8ec3c75153141f5d4d925b78b27cad6a4f6d6550240417314b626b",        
          "0040403451f11c23390f425ea7e4b96bfd5328affec5dd8056f402000000000000000000bd0b9dba1eba506bb082e2cfbcb8f5a5d23b8ee3f7ba5c3c094bcee6d05dbc4805516d6550240417148d07e8",        
          "0060e220674f73930f211a96c69a51aca44ad2abe7666cfa42b4030000000000000000004c7248b771593ed7c076f8e257d9600ffb00bd19d64fe0ef8f00eaaf8b1ef01cf6576d655024041779190a03",        
          "00c06f2bf342db85cf3b30ce650727c599f23fd4fa208f61fb16030000000000000000007316b0aa3947a5129f4961a9bb8facacab404ff7ee5782e19f196f2d5cc66c77365a6d655024041759616322",        
          
      ])
   
      
      processHeaders(args);
          
        
        }






        export function createBufferFromBase64(base64String: string): string {
            // Decode the base64 string into a byte array
            let decodedBytes: string = base64(base64String);
            consoleLog(decodedBytes)
            return decodedBytes;
          
          }
  
                
    `, {
    // textFile
    // runtime: "esm"
    bindings: ['esm'],
    runPasses: ['asyncify']
  })
  console.log(data.stderr.toString())
  console.log(data)

  function reverseBytes(str: string) {
    return Buffer.from(str, 'hex').reverse().toString('hex');
  }

  if (data.binary) {
    let dataStore = new Map()
    async function getAscArray(instance: any, arrptr: number) {
      let arrContent = instance.exports.__getArrayBuffer(arrptr)
      let arr = [];
      for (let index = 0; index < arrContent.byteLength; index++) {
        let element = await (instance.instance.exports as any).getU8(arrptr, index)
        arr.push(element);
      }
      return arr;
    }
    const insta = await instantiate(data.binary, {
      input: {

        consoleLog: (d) => {

          console.log(insta.exports.__getString(d))
          // return 44
        },
        consoleLogPropertyString: (name: any, value: any) => {
          console.log(insta.exports.__getString(name), " = ", insta.exports.__getString(value))
        },
        consoleLogPropertyNumber: (name: any, value: number) => {
          console.log(insta.exports.__getString(name), " = ", value)
        }
        ,

        getISODate(timestamp)  { 
          let epochTime=insta.exports.__getString(timestamp)         
          console.log("time stamp is ",epochTime);
          
          return insta.exports.__newString(new Date(parseInt( epochTime) ).toISOString())
        }
        
,        jsCallback: (cb: any) => {
          return cb();
        },
        consoleLogObject: (obj) => {

          console.log("obj print __" + insta.exports.__getArray(obj))
          // return 44
        }
        ,
        logNumber: (d) => {
          console.log('logNumber', d)
        },
        logBool: (d) => {
          console.log('logBool', d)
        },
        logUint8Array: async (d) => {
          console.log("logging asc array ");

          let arr = await getAscArray(insta, d);
          console.log(arr);
        },
        
        Uint8ArrayFromBufferHex: async (hex: number) => {
          async function makeAscArray(instance: any, arr: Uint8Array) {
            let arrptr = instance.exports.__newArrayBuffer(new ArrayBuffer(arr.length))
            let arrContent = instance.exports.__getArrayBuffer(arrptr)

            for (let index = 0; index < arr.length; index++) {
              const element = arr[index];
              await (instance.instance.exports as any).setU8(arrptr, index, element)
            }
            // console.log(await (insta.instance.exports as any).getU8(arrptr, 0));
            return arrptr;
          }

          let value = insta.exports.__getString(hex)
          console.log("decoding ", value, "\n or ",hex)

          const decodeHex = new Uint8Array(Buffer.from(value, 'hex'))
          // decodeHex[0]
          // console.log("decode hex is ", decodeHex, "first element is ", decodeHex[0]
          // );

          let asc_ptr = await makeAscArray(insta, decodeHex)
          return asc_ptr
          //  insta.exports.__newArrayBuffer()
          //  return decodeHex;

        }
        ,

        base64: (str) => {
          let text= base64.decode(insta.exports.__getString(str))
          console.log({text});
          
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
          return insta.exports.__newString(String(timestamp*1000))

        },
        extractMerkleRootLE: (_decodeHex) => {
          let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);

          const merkleRoot = reverseBytes(BTCUtils.extractMerkleRootLE(decodeHex))
          // console.log("merkleroot", merkleRoot);

          return insta.exports.__newString(merkleRoot)

        },
        hash256: (_decodeHex) => {
          let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);
          // console.log("headerhash from ", decodeHex);
          const headerHash = reverseBytes(BTCUtils.hash256(decodeHex));
          // console.log("headerhash ", headerHash);

          return insta.exports.__newString(headerHash)

        }
        ,
        validateHeaderChain: (_decodeHex) => {
          console.log("hex value is ",_decodeHex);
          let decodeHex = insta.exports.__getArrayBuffer(_decodeHex);
          console.log("validating ",decodeHex);

          const diff = ValidateSPV.validateHeaderChain(decodeHex)
          console.log("diff", diff);


          return diff;
        },
        isValidProof:(proof)=>{
         return ValidateSPV.validateProof (deserializeSPVProof(JSON.stringify(proof)))
        },


        "db.setObject": (keyPtr, valPtr) => {
          const key = insta.exports.__getString(keyPtr)
          const val = insta.exports.__getString(valPtr)

          console.log('setObject', key, val)
          dataStore.set(key, val)
          return 1;
        },
        "db.getObject": (key) => {
          console.log('getObject', key)
          return "hello"
        },
        api: async () => {
          const { data } = await Axios.get('http://ipinfo.io/json')
          console.log(data)

          return insta.exports.__newString(data.ip)
        }
      }
    } as any)
    
    console.log(await (await insta.instance.exports as any).main());
    
    // await (await insta.instance.exports as any).createBufferFromBase64(insta.exports.__newString("SGVsbG8gV29ybGQ="))

  }
})()
