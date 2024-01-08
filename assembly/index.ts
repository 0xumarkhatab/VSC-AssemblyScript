import { JSON, JSONEncoder, JSONDecoder, JSONHandler } from "assemblyscript-json/assembly";
// @ts-ignore
import { console, db } from "@vsc.eco/sdk/assembly"
import { Uint8ArrayFromBufferHex, base64, extractMerkleRootLE, extractPrevBlockLE, extractTimestampStr, hash256, isValidProof, validateHeaderChain } from "./bitcoin.ts"
import { getISODate } from "./Date.ts";

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

// 
// declare function consoleLogObject(arg0: Map<string, string>): void;
// declare function consoleLog(arg0: String): void;
// declare function consoleLogPropertyString(arg0: String, arg1: String): void
// declare function consoleLogPropertyNumber(arg0: String, arg1: u64): void




var dataStorage = new Map<string, string>();

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
  diff: i64;
  totalDiff: i64;
  height: i64;
  raw: string;
  constructor(
    _prevBlock: string,
    _timestamp: string,
    _merkleRoot: string,
    _diff: i64,
    _totalDiff: i64,
    _height: i64,
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
    console.log("prevBlock " + this.prevBlock);
    console.log("merkleRoot " + this.merkleRoot);
    console.log("raw " + this.raw);
    console.log("timestamp " + this.timestamp)

    console.log("diff " + this.diff.toString())
    console.log("totalDiff " + this.totalDiff.toString())
    console.log("height " + this.height.toString())
    console.log(" ------------- ---------- -------------")

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

    return encoder.toString();

  }
  static from(str_obj: string): Header {
    let headerObject: JSON.Obj = <JSON.Obj>JSON.parse(str_obj);
    let _prevBlock: JSON.Str | null = headerObject.getString("prevBlock")
    let _timestamp: JSON.Str | null = headerObject.getString("timestamp")
    let _merkleRoot: JSON.Str | null = headerObject.getString("merkleRoot")
    let _raw: JSON.Str | null = headerObject.getString("raw")


    let _diff: JSON.Integer | null = (headerObject.getInteger("diff"));
    let _totalDiff: JSON.Integer | null = (headerObject.getInteger("totalDiff"));
    let _height: JSON.Integer | null = (headerObject.getInteger("height"));

    // getNum
    // 


    let prevBlock: string = "";
    let timestamp: string = "";
    let merkleRoot: string = "";
    let diff: i64 = 1;
    let totalDiff: i64 = 1;
    let height: i64 = 1;
    let raw: string = "";
    if (_prevBlock != null) {
      prevBlock = _prevBlock.valueOf();
    }
    if (_merkleRoot != null) {
      merkleRoot = _merkleRoot.valueOf()
    }
    if (_timestamp != null) {
      timestamp = _timestamp.valueOf()
    }
    if (_raw != null) {
      raw = _raw.valueOf()
    }


    if (_diff != null) {
      diff = (_diff.valueOf())
    }
    if (_totalDiff != null) {
      totalDiff = (_totalDiff.valueOf())
    }
    if (_height != null) {
      height = (_height.valueOf())
    }

    let h: Header = new Header(prevBlock, timestamp, merkleRoot, diff, totalDiff, height, raw);
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

// manipulate object

function setValueInJsonString(jsonObject: string, key: string, val: string): string {
  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  obj.set<string>(key, val);
  return obj.stringify();
}
function deleteValueInJsonString(jsonObject: string, key: string): string {
  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  obj.set(key, null);
  return obj.stringify();
}


// getters for string and integer values of the object/map
function getStringValueFromJsonObject(jsonObject: string, valName: string): string {
  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  let val: JSON.Str | null = obj.getString(valName);
  if (val != null) {
    return val.valueOf();
  }
  return "";

}

function getIntegerValueFromJsonObject(jsonObject: string, valName: string): number {
  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  let val: JSON.Num | null = obj.getNum(valName);
  if (val != null) {
    return val.valueOf();
  }
  return 0;
}
// map.has
function JsonObjectMapHas(valName: string, jsonObject: string): bool {
  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  let val: JSON.Str | null = obj.getString(valName);
  if (val != null) {
    return true;
  }
  return false;

}

// get keys and values of map as array

function getJsonStringObjectValues(jsonObject: string): string[] {
  console.log("getting json values");

  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);

  var _arr: string[] = [];

  console.log("object values are ");

  for (let j = 0; j < obj.keys.length; j++) {
    const _key: string = obj.keys[j];
    let val: string = getStringValueFromJsonObject(obj.stringify(), _key)
    console.log(val)
    _arr.push(val)
  }

  return _arr;


}
function getJsonStringObjectKeys(jsonObject: string): string[] {
  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  var _arr: string[] = [];

  for (let j = 0; j < obj.keys.length; j++) {
    const _key: string = obj.keys[j];
    _arr.push(_key)

  }
  return _arr;


}

function processHeaders(args: BTCHeader): void {
  // const preHeaders: Array<Header>  = [pull("pre-headers/main") ];
  // var preHeaders = db.getObject(`pre-headers/main`)

  var preHeaders: string = db.getObject(`pre-headers/main`)

  let headers: Array<string> = args.headers
  for (let i: i32 = 0; i < headers.length; i = i + 1) {

    consoleLog("For Header " + i.toString());

    let rawBH: string = headers[i];
    // consoleLog(rawBH)
    let decodeHex: Uint8Array | null = Uint8ArrayFromBufferHex(rawBH);
    if (decodeHex != null) {
      console.log("array inside index.ts is ")
      console.log(decodeHex.toString())
      console.log("it is printed ! ")


      const prevBlock = extractPrevBlockLE(decodeHex);
      if (prevBlock != "") {
        console.log("it exists")
      }
      console.log(prevBlock);


      const timestamp: string = extractTimestampStr(decodeHex)
      const merkleRoot = extractMerkleRootLE(decodeHex)
      const headerHash = hash256(decodeHex);
      let diff: u64 = u64(i);
      // TODO : get diff calculation to work
      // diff = u64(validateHeaderChain(decodeHex))
      let prevDiff: i64 = 0;
      let prevHeight: i64 = 0;
      if (prevBlock === '0000000000000000000000000000000000000000000000000000000000000000') {
        prevDiff = 0;
        prevHeight = -1;
      } else if (JsonObjectMapHas(preHeaders, prevBlock)) {
        let prevBlockVal: string = getStringValueFromJsonObject(preHeaders, prevBlock);
        prevDiff = i64(getIntegerValueFromJsonObject(prevBlockVal, "totalDiff"))
        prevHeight = i64(getIntegerValueFromJsonObject(prevBlockVal, "height"))


      } else {
        // continue;
      }

      let decodedHeader: Header = new Header(prevBlock, getISODate(timestamp), merkleRoot, diff, diff + prevDiff, prevHeight + 1, rawBH)
      // preHeaders.set(prevBlock, (decodedHeader.json()))
      preHeaders = setValueInJsonString(preHeaders, prevBlock, decodedHeader.json())
    }


  }
  console.log("outside headers")
  // var preHeaderValues: Array<string> = preHeaders.values()
  // var mapKeys: Array<string> = preHeaders.keys()
  var mapValues: Array<string> = getJsonStringObjectValues(preHeaders);
  console.log("mapvalues length " + mapValues.length.toString());
  return

  for (let i: i32 = 0; i < mapValues.length; i = i + 1) {
    // let header1: JSON.Obj = <JSON.Obj>JSON.parse(mapValues[i])
    for (let j: i32 = 0; j < mapValues.length; j = j + 1) {
      // let header2: JSON.Obj = <JSON.Obj>JSON.parse(mapValues[j] )

      let val1 = getIntegerValueFromJsonObject(mapValues[i], "totalDiff")
      let val2 = getIntegerValueFromJsonObject(mapValues[j], "totalDiff")

      // let _val1: Integer | null = header1.getInteger("totalDiff")
      // let _val2: Integer | null = header2.getInteger("totalDiff")

      // let val1: i64 = 0, val2: i64 = 0
      // if (_val1 != null) {
      //   val1 = _val1.valueOf();
      // }
      // if (_val2 != null) {
      //   val2 = _val2.valueOf();
      // }

      if (val1 != null && val2 != null) {
        if (val1 - val2) {
          var temp: string = mapValues[i];
          mapValues[i] = mapValues[j]
          mapValues[j] = temp

        }

      }

    }
  }

  // mapValues is sorted
  let topHeader: JSON.Obj = <JSON.Obj>JSON.parse(mapValues[mapValues.length - 1])

  console.log("totalMap values before blocksToPush " + mapValues.length.toString())

  let blocksToPush = new Array<string>(mapValues.length)
  let curDepth: i64 = 0;
  let prevBlock: JSON.Obj = topHeader;

  let idx: i32 = 0
  for (; ;) {
    if (idx >= mapValues.length) {
      break;
    }

    let ___prevBlock: JSON.Str | null = prevBlock.getString("prevBlock");
    let __prevBlock = "null";
    if (___prevBlock != null) {
      __prevBlock = ___prevBlock.valueOf();
    }

    if (JsonObjectMapHas(__prevBlock, preHeaders)) {
      //             headersState[key] = await state.pull(`headers/${key}`) || {}

      if (curDepth > validity_depth && idx < mapValues.length) {
        blocksToPush[idx++] = getStringValueFromJsonObject(preHeaders, __prevBlock)
      } else {
        curDepth = curDepth + 1;
      }
    } else {
      break;
    }
    prevBlock = <JSON.Obj>JSON.parse(getStringValueFromJsonObject(preHeaders, __prevBlock))

  }
  consoleLog("Added blocks")
  for (let i: i32 = 0; i < blocksToPush.length; i = i + 1) {
    let h: Header = Header.from(blocksToPush[i]);
    h.print()
  }

  let highestHeight: i64 = 0;
  for (let i: i32 = 0; i < blocksToPush.length; i = i + 1) {
    let __block: string = blocksToPush[i]
    let block: JSON.Obj = <JSON.Obj>JSON.parse(__block);
    let __height: JSON.Integer | null = (block.getInteger("height"))
    let __raw: JSON.Str | null = block.getString("raw")

    let _height: i64 = 0;
    let _block_raw = "";

    if (__height != null) {
      _height = __height.valueOf();
    }
    if (__raw != null) {
      _block_raw = __raw.valueOf();
    }


    const key = calcKey(u64(_height))

    //Get headers in memory if not available
    if (!headersState.has(key)) {
      let _pullKeyHeader: string = db.getObject("headers/" + key);
      let pullKeyHeader: JSON.Obj = <JSON.Obj>JSON.parse(_pullKeyHeader)
      headersState.set(key, pullKeyHeader.stringify())


      // let command: string = "headers/";
      // let stringKey: string = key.toString();
      // command.concat(stringKey)
      // let __headerStateInstance: Map<string, string> = state.pull(command)
      // let h: JSON.Obj = <JSON.Obj>JSON.parse(__headerStateInstance.get(key))
      // let headerStateInstance: Header = Header.from(h.stringify())
      // let jsonHeader = headerStateInstance.json();
      // headersState.set(key, jsonHeader)

    }


    if (headersState.has(key)) {
      // if block height is zero 
      let h: JSON.Obj = <JSON.Obj>JSON.parse(headersState.get(key))
      let headerStateInstance: Header = Header.from(h.stringify())
      let keyHeader: string = headersState.get(key)
      // keyHeader.set(_height.toString() + "", _block_raw);
      keyHeader = setValueInJsonString(keyHeader, _height.toString(), _block_raw)
      if (!getIntegerValueFromJsonObject(h.stringify(), "height")) {
        headersState.set(key, keyHeader)
      }



    }
    if (highestHeight < _height) {
      highestHeight = (_height)
    }

  }

  let preheaderKeys = getJsonStringObjectKeys(preHeaders)
  for (let i: i32 = 0; i < preheaderKeys.length; i = i + 1) {
    let key: string = preheaderKeys[i]
    let currentPreHeaderMap: string = getStringValueFromJsonObject(preHeaders, key + "")

    let height: i64 = i64(getIntegerValueFromJsonObject(currentPreHeaderMap, "height"))
    if (highestHeight >= height) {
      console.log("old highestHeight" + highestHeight.toString())
      console.log("new highest" + height.toString())

      // preHeaders.delete(key);
      preHeaders = deleteValueInJsonString(preHeaders, key);

    }
  }

  for (let i: i32 = 0; i < headersState.keys().length; i = i + 1) {
    let key: string = headersState.keys()[i]
    let val: string = getStringValueFromJsonObject(preHeaders, key)


    let command: string = "headers/" + key;

    let newMap = new Map<string, string>();
    newMap.set(key, val);

    db.setObject(command, val)
    // headersState[key] = update(command,val) 

  }

  db.setObject('pre-headers/main', preHeaders)


}
// Utility functions
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
// @ts-ignore
@external('sdk', 'console.log')
declare function consoleLog(arg: string): void

export function main(): string {
  console.log("inside main")
  let args: BTCHeader = new BTCHeader([
    "00400a20a141199637ef910d71c62c22cf3041da4f1adf3e0d6d03000000000000000000185f7f2ccdd1d6c656962be8bdb432cc2c8ec3c75153141f5d4d925b78b27cad6a4f6d6550240417314b626b",
    "0040403451f11c23390f425ea7e4b96bfd5328affec5dd8056f402000000000000000000bd0b9dba1eba506bb082e2cfbcb8f5a5d23b8ee3f7ba5c3c094bcee6d05dbc4805516d6550240417148d07e8",
    "0060e220674f73930f211a96c69a51aca44ad2abe7666cfa42b4030000000000000000004c7248b771593ed7c076f8e257d9600ffb00bd19d64fe0ef8f00eaaf8b1ef01cf6576d655024041779190a03",
    "00c06f2bf342db85cf3b30ce650727c599f23fd4fa208f61fb16030000000000000000007316b0aa3947a5129f4961a9bb8facacab404ff7ee5782e19f196f2d5cc66c77365a6d655024041759616322",

  ])


  processHeaders(args);
  return "success";


}






export function createBufferFromBase64(base64String: string): string {
  // Decode the base64 string into a byte array
  let decodedBytes: string = base64(base64String);
  consoleLog(decodedBytes)
  return decodedBytes;

}
