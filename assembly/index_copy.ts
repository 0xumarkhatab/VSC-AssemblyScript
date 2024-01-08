import { JSON, JSONEncoder, JSONDecoder, JSONHandler } from "assemblyscript-json/assembly";

// import {} from "assemblyscript-json"
//
/***
 * 
 *  basic tests 
 *  Security aspects : PoW retarget - 144 blocks
 * 
 * 

 */
// 

/**
 * 
 * 

- Json serliazation
- build asbuild
- Pull and update method state
- namespace implementation in vm
- read release.wasm file
- run vm.ts
- Test
- show you results


 */
import { JSON } from "assemblyscript-json";
import { Integer, Null } from "assemblyscript-json/assembly/JSON";

// 
declare function consoleLogObject(arg0: Map<string, string>): void;
declare function consoleLog(arg0: String): void;
declare function consoleLogPropertyString(arg0: String, arg1: String): void
declare function consoleLogPropertyNumber(arg0: String, arg1: u64): void
declare function Uint8ArrayFromBufferHex(arg0: string): Uint8Array
declare function logNumber(arg0: i32): void;
declare function base64(str: string): string
declare function getISODate(timestamp: string): string

// external 

declare function extractPrevBlockLE(decodeHex: Uint8Array): string

declare function extractTimestampStr(decodeHex: Uint8Array): string
declare function extractMerkleRootLE(decodeHex: Uint8Array): string
declare function hash256(decodeHex: Uint8Array): string
declare function validateHeaderChain(decodeHex: Uint8Array): number
declare function isValidProof(proof: any): bool

declare namespace db {
  function setObject(key: String, val: String): i32
  function getObject(key: String): String
}
var dataStorage = new Map<string, string>();

// path 

declare namespace state {

  function pull(key: String): Map<string, string>
  function update(command: string, val: Map<string, Header>): void;
  function update(command: string, val: Header): void;
}



const validity_depth = 2;
const headersState = new Map<string, string>()


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

class Header {
  prevBlock: string;
  timestamp: string;
  merkleRoot: string;
  diff: u64;
  totalDiff: u64;
  height: u64;
  raw: string;
  constructor(
    _prevBlock: string,
    _timestamp: string,
    _merkleRoot: string,
    _diff: u64,
    _totalDiff: u64,
    _height: u64,
    _raw: string
  ) {
    this.prevBlock = _prevBlock;
    this.timestamp = _timestamp;
    this.merkleRoot = _merkleRoot;
    this.diff = _diff;
    this.totalDiff = _totalDiff;
    this.height = _height;
    this.raw = _raw;
  }
  print(): void {
    consoleLog(" ------------- Printing Header -------------")
    consoleLogPropertyString("prevBlock", this.prevBlock);
    consoleLogPropertyString("merkleRoot", this.merkleRoot);
    consoleLogPropertyString("raw", this.raw);
    consoleLogPropertyString("timestamp", this.timestamp)

    consoleLogPropertyNumber("diff", this.diff)
    consoleLogPropertyNumber("totalDiff", this.totalDiff)
    consoleLogPropertyNumber("height", this.height)
    consoleLog(" ------------- ---------- -------------")

  }
  json(): string {
    let encoder = new JSONEncoder();
    // let decoder = new JSONDecoder();

    encoder.setString("prevBlock", this.prevBlock);
    encoder.setString("timestamp", this.timestamp);
    encoder.setString("merkleRoot", this.merkleRoot);
    encoder.setInteger("diff", this.diff)
    encoder.setInteger("totalDiff", this.totalDiff)
    encoder.setInteger("height", this.height)
    encoder.setString("raw", this.raw);
    
    return encoder.toString ();
    
  }
  static from(str_obj:string):Header{
    let headerObject:JSON.Obj=<JSON.Obj>JSON.parse(str_obj);
    let prevBlock=headerObject.getString("prevBlock")?.valueOf()+"";
    let timestamp=headerObject.getString("timestamp")?.valueOf()+"";
    let merkleRoot=headerObject.getString("merkleRoot")?.valueOf()+"";
    let raw=headerObject.getString("raw")?.valueOf()+"";

    let diff:u64=u64( headerObject.getInteger("diff")?.valueOf());
    let totalDiff:u64=u64(headerObject.getInteger("totalDiff")?.valueOf());
    let height:u64=u64(headerObject.getInteger("height")?.valueOf());

    let h:Header=new Header(prevBlock,timestamp,merkleRoot,diff,totalDiff,height,raw);
    return h;

  }
}

// export function dummyHeaders(): Array<Header> {
//   let headers: Array<Header> = [
//     {
//       prevBlock: "2000000000000000000000000000000000000000000000000000000000000000",
//       timestamp: "12-12-2000",
//       merkleRoot: "4e5c75b44b0923a92126c0296b528d8843fd6676d9ad37031e7fa96505f88d1f",
//       diff: (1677022373),
//       totalDiff: (9623412),
//       height: (1677022373),
//       raw: "dummy raw data",
//       print: () => {
//         console.log();

//       }

//     },
//     {
//       prevBlock: "0000000000000000000000000000000000000000000000000000000000000000",
//       timestamp: "12-12-2000",
//       merkleRoot: "4t5c75b44b0923a92126c0296b528d8843fd6676d9ad37031e7fa96505f88d1f",
//       diff: (1877022373),
//       totalDiff: (8623412),
//       height: (2077022373),
//       raw: "dummy raw data",
//       print: () => {
//         console.log();

//       }


//     }

//   ];
//   return headers;
// }


// function pull(informationString: string): Array<Header>  {

//   if (informationString == "pre-headers/main") {
//     let res:Array<Header>  = dummyHeaders();
//   }
//   return dummyHeaders();
// }
// function update(command:string,val:Header):void{

// }

// function updatePreheaders(command:string,val:Map<string,Header>):void{

// }



class BTCHeader {
  headers: Array<string>;
  constructor(_headers: Array<string>) {
    this.headers = _headers;
  }
}
function doesPrevBlockExists(headers: Array<Header>, prevBlock: string): bool {
  for (let i: i32 = 0; i < headers.length; i = i + 1) {
    if (headers[i].prevBlock == prevBlock) {
      return true
    }
  }
  return false
}
function getHeaderViaPrevBlock(headers: Array<Header>, prevBlock: string): Header {
  for (let i: i32 = 0; i < headers.length; i = i + 1) {
    if (headers[i].prevBlock == prevBlock) {
      return headers[i]
    }
  }
  let emptyHeader: Header = new Header(
    "0000000000000000000000000000000000000000000000000000000000000000",
    "",
    "0000000000000000000000000000000000000000000000000000000000000000",
    0,
    0,
    0,
    ""
  )

  return emptyHeader;
}

function processHeaders(args: BTCHeader): void {
  // const preHeaders: Array<Header>  = [pull("pre-headers/main") ];
  // var preHeaders = new Map<string,Header>()
  var preHeaders: Map<string, string> = state.pull(`pre-headers/main`) || {
  }
  let headers: Array<string> = args.headers
  for (let i: i32 = 0; i < headers.length; i = i + 1) {
    consoleLog("For Header ");
    logNumber(i)
    let rawBH: string = headers[i];
    // consoleLog(rawBH)
    let decodeHex: Uint8Array = Uint8ArrayFromBufferHex(rawBH);
    const prevBlock = extractPrevBlockLE(decodeHex);
    const timestamp: string = extractTimestampStr(decodeHex)
    const merkleRoot = extractMerkleRootLE(decodeHex)
    const headerHash = hash256(decodeHex);
    let diff: u64 = u64(i);
    // TODO : get diff calculation to work
    // diff = u64(validateHeaderChain(decodeHex))
    let prevDiff: u64 = 0;
    let prevHeight: u64 = 0;
    if (prevBlock === '0000000000000000000000000000000000000000000000000000000000000000') {
      prevDiff = 0;
      prevHeight = -1;
    } else if (preHeaders.has(prevBlock)) {
      let h: JSON.Obj = <JSON.Obj>JSON.parse(preHeaders.get(prevBlock));
      prevDiff = u64(h.getInteger("totalDiff"))
      prevHeight = u64(h.getInteger("height"));
    } else {
      // continue;
    }

    let decodedHeader: Header = new Header(prevBlock, getISODate(timestamp), merkleRoot, diff, diff + prevDiff, prevHeight + 1, rawBH)
    preHeaders.set(prevBlock, (decodedHeader.json()))

  }
  // var preHeaderValues: Array<string> = preHeaders.values()
  // var mapKeys: Array<string> = preHeaders.keys()
  var mapValues: Array<string> = preHeaders.values()
  for (let i: i32 = 0; i < mapValues.length; i = i + 1) {
    let header1: JSON.Obj = <JSON.Obj>JSON.parse(mapValues[i])
    for (let j: i32 = 0; j < mapValues.length; j = j + 1) {
      let header2: JSON.Obj = <JSON.Obj>JSON.parse(mapValues[j])
      let val1: Integer | null = header1.getInteger("totalDiff")
      let val2: Integer | null = header2.getInteger("totalDiff")

      if (val1 != null && val2 != null) {
        if (u64(val1) - u64(val2)) {
          var temp: JSON.Obj = header1;
          mapValues[j] = temp.toString();
          mapValues[i] = header2.toString();

        }

      }

    }
  }

  // mapValues is sorted
  let topHeader: JSON.Obj = <JSON.Obj>JSON.parse(mapValues[mapValues.length - 1])

  logNumber(mapValues.length)

  let blocksToPush = new Array<string>(mapValues.length)
  let curDepth = 0;
  let prevBlock: JSON.Obj = topHeader;

  let idx: i32 = 0
  for (; ;) {
    if (idx >= mapValues.length) {
      break;
    }
    let __prevBlock = prevBlock.getString("prevBlock")?.valueOf() + ""
    if (preHeaders.has(__prevBlock)) {
      //             headersState[key] = await state.pull(`headers/${key}`) || {}

      if (curDepth > validity_depth && idx < mapValues.length) {
        blocksToPush[idx++] = preHeaders.get(__prevBlock)
      } else {
        curDepth = curDepth + 1;
      }
    } else {
      break;
    }
    prevBlock = <JSON.Obj>JSON.parse(preHeaders.get(__prevBlock))

  }
  consoleLog("Added blocks")
  for (let i: i32 = 0; i < blocksToPush.length; i = i + 1) {
    let h:Header=Header.from(blocksToPush[i]);
    h.print()
  }

  let highestHeight: u64 = 0;
  for (let i: i32 = 0; i < blocksToPush.length; i = i + 1) {
    let __block: string = blocksToPush[i]
    let block:JSON.Obj=<JSON.Obj>JSON.parse(__block);
    const key = calcKey(u64(block.getInteger("height")?.valueOf()))
    //Get headers in memory if not available
    if (!headersState.has(key)) {
      let command: string = "headers/";
      let stringKey: string = key.toString();
      command.concat(stringKey)
      let __headerStateInstance: Map<string,string> = state.pull(command)
      let h : JSON.Obj=<JSON.Obj>  JSON.parse(__headerStateInstance.get(key))
      let headerStateInstance:Header=Header.from(  h.stringify())
      let jsonHeader = headerStateInstance.json();
      headersState.set(key, jsonHeader)

    }
    //Only override if not
    if (headersState.has(key) && !headersState.get(key).has(block.height)) {
      headersState.set(key,
        headersState.get(key).set(
          block.height, block.raw
        )
      )
    }
    if (highestHeight < block.height) {
      highestHeight = block.height
    }
    // headersState[calcKey(block.height as number)] = block.raw
  }

  for (let i: i32 = 0; i < preHeaders.keys().length; i = i + 1) {
    let key: string = preHeaders.keys()[i]

    let height = preHeaders.get(key).height
    if (highestHeight >= height) {
      consoleLogPropertyNumber("old highestHeight", highestHeight)
      consoleLogPropertyNumber("new highest", height)
      preHeaders.delete(key);
    }
  }

  for (let i: i32 = 0; i < headersState.keys().length; i = i + 1) {
    let key: string = headersState.keys()[i]
    let val = preHeaders.get(key)

    let command: string = "headers/";
    let stringKey: string = key.toString();
    command.concat(stringKey)
    state.update(command, val)
    // headersState[key] = update(command,val) 

  }

  state.update('pre-headers/main', preHeaders)


}
// Utility function
export function setU8(arr: ArrayBuffer, idx: u8, value: u8): void {
  var dv = new DataView(arr);
  dv.setUint8(idx, value)
}
export function getU8(arr: ArrayBuffer, idx: u8): u8 {
  var dv = new DataView(arr);
  return dv.getUint8(idx)
}

// export function validateTxProof(args) {
// const {proof} = args
// let command: string = "headers/";
// let stringKey:string=calcKey(proof.confirming_height).toString();
// command.concat(stringKey)
// const bundleHeaders = pull(command) 

// const header = bundleHeaders[proof.confirming_height]


// const decodeHex:Uint8Ar export class Headerray = Uint8ArrayFromBufferHex(header)        
// let decodeHex:Uint8Array = Uint8ArrayFromBufferHex(rawBH);
// const prevBlock = extractPrevBlockLE(decodeHex);
// const timestamp:string =  extractTimestampStr(decodeHex)
// const merkleRoot = extractMerkleRootLE(decodeHex)
// const headerHash = hash256(decodeHex);

// const confirming_header = {
//     raw: header,
//     hash: headerHash,
//     height: proof.confirming_height,
//     prevhash: prevBlock,
//     merkle_root: merkleRoot,
// }

// const fullProof = {
//     ...proof,
//     confirming_header
// }
// let validProof = isValidProof(fullproof)

// if(validProof) {
//   let command: string = "txs/";
//   let stringKey:string=proof.tx_id.toString();
//   command.concat(stringKey)  
//   update(command, proof)
// }
// }

export function main(): void {
  let args: BTCHeader = new BTCHeader([
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
