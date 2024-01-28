import { JSON, JSONEncoder, JSONDecoder, JSONHandler } from "assemblyscript-json/assembly";
// @ts-ignore
import { console, db } from "@vsc.eco/sdk/assembly"
import { Uint8ArrayFromBufferHex, base64, extractMerkleRootLE, extractPrevBlockLE, extractTimestampStr, extractTimestampEpoch, hash256, isValidProof, validateHeaderChain, retarget } from "./bitcoin.ts"
import { getEpochTime, getISODate } from "./Date.ts";
import { deleteKeyFromObject } from "./json_manipulation.ts";

// import {} from "assemblyscript-json"
//
/***
 * 
 *  basic tests 
 *  Security aspects : PoW retarget - 1440 blocks
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

const validity_depth = 2; // blocks confirmation

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
  const keyA = (height / cs) * cs;

  return concat([keyA.toString(), "-", (keyA + cs).toString()])
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
    let obj: JSON.Obj = <JSON.Obj>JSON.parse("{}")

    obj.set("prevBlock", this.prevBlock);
    obj.set("timestamp", this.timestamp);
    obj.set("merkleRoot", this.merkleRoot);
    obj.set("diff", this.diff)
    obj.set("totalDiff", this.totalDiff)
    obj.set("height", this.height)
    obj.set("raw", this.raw);
    // console.log(obj.stringify());

    return obj.stringify()

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
  // console.log("\nsetting value" + val + "at " + key + " in " + jsonObject);
  var obj: JSON.Obj;

  if (isNullObject(jsonObject)) {
    obj = <JSON.Obj>JSON.parse('{}');
  }
  else {
    obj = <JSON.Obj>JSON.parse(jsonObject);
  }


  obj.set<string>(key, val);
  // console.log("\nresult is " + obj.toString());

  return obj.stringify();
}
function deleteValueInJsonString(jsonObject: string, _key: string): string {
  if (isNullObject(jsonObject)) {
    return jsonObject;
  }

  var obj: JSON.Obj | null = <JSON.Obj>JSON.parse(jsonObject);
  let keys = obj.keys;
  let newObj: JSON.Obj = <JSON.Obj>JSON.parse("{}");
  for (let i = 0; i < keys.length; i++) {
    const key = keys[i];
    if (key != _key) {
      let val: string = getStringValueFromJsonObject(jsonObject, key)
      // console.log("value for "+key+" is "+val);
      newObj.set(key, val);
    }



  }


  return newObj.stringify();
}


// getter for string values of the object/map
function getStringValueFromJsonObject(jsonObject: string, valName: string): string {
  // console.log("getting value for " + valName + " from " + jsonObject);

  if (isNullObject(jsonObject)) {
    // console.log("NULL object");

    return "";
  }

  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);

  let val: JSON.Str | null = obj.getString(valName);
  if (val) {
    // console.log("value is "+val.valueOf());

    return val.valueOf();
  }
  return "";

}
// getter for integer values of the object/map
function getIntegerValueFromJsonObject(jsonObject: string, valName: string): i64 {
  // console.log("getting Integer value for " + valName + "from " + jsonObject);

  var obj: JSON.Obj = <JSON.Obj>JSON.parse((jsonObject));
  let val: JSON.Integer | null = obj.getInteger(valName);

  if (val != null) {
    // console.log("returning " + val.valueOf().toString());

    return (val.valueOf());
  }
  return -1;
}
// map.has
function isNullObject(jsonObject: string): bool {
  return (!jsonObject || jsonObject == '{}');


}
function JsonObjectMapHas(valName: string, jsonObject: string): bool {
  if (isNullObject(jsonObject)) {
    return false;
  }

  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  let val: JSON.Str | null = obj.getString(valName);
  if (val != null) {
    return true;
  }
  return false;

}

// get keys and values of map as array

function getJsonStringObjectValues(jsonObject: string): string[] {
  // console.log("getting json values for " + jsonObject);
  if (isNullObject(jsonObject)) {

    return [];
  }

  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);

  let keys = obj.keys
  // console.log("object keys length " + keys.length.toString());

  var _arr = new Array<string>(keys.length)
  // console.log("object values are ");

  for (let j = 0; j < keys.length; j++) {
    const _key: string = keys[j];
    let val: string = getStringValueFromJsonObject(jsonObject, _key)
    _arr[j] = val
  }
  //console.log("array is "+_arr[0]);


  return _arr;


}
function getJsonStringObjectKeys(jsonObject: string): string[] {
  if (isNullObject(jsonObject)) {
    return [];
  }

  var obj: JSON.Obj = <JSON.Obj>JSON.parse(jsonObject);
  var _arr: string[] = [];

  for (let j = 0; j < obj.keys.length; j++) {
    const _key: string = obj.keys[j];
    _arr.push(_key)

  }
  return _arr;


}

function printStringArray(arr: Array<string>): void {
  if (arr.length == 0) {
    return
  }


  for (let i: i32 = 0; i < arr.length; i = i + 1) {
    let element: string = arr[i]
    let obj: JSON.Obj = <JSON.Obj>JSON.parse(element);
    console.log(element);

  }


}
function printHeaderState(h: Map<string, string>): void {
  let keys = h.keys();

  for (let j = 0; j < keys.length; j++) {
    const key = keys[j];

    let val: string | null = h.get(key)

    if (val) {
      console.log(key + " : " + val);
    }
  }


}

function printJsonObj(h: JSON.Obj): void {
  let keys = h.keys;
  let content = ""
  for (let j = 0; j < keys.length; j++) {
    const key = keys[j];

    let val: string = getStringValueFromJsonObject(h.stringify(), key)
    if (val) {
      content = content + (key + " : " + val)

    }

  }
  console.log("{" + content + "}");


}


/**
 * 
 * sort Map values and map keys ( Pre-headers object)
 * 
 */
function quicksort(mapValues: Array<string>, mapKeys: Array<string>, low: i32, high: i32): void {
  if (low < high) {
    let pi: i32 = partition(mapValues, mapKeys, low, high);
    quicksort(mapValues, mapKeys, low, pi - 1);
    quicksort(mapValues, mapKeys, pi + 1, high);
  }
}

function partition(mapValues: Array<string>, mapKeys: Array<string>, low: i32, high: i32): i32 {
  let pivot: i32 = i32(getIntegerValueFromJsonObject(mapValues[high], "totalDiff"))
  let i: i32 = low - 1;

  for (let j: i32 = low; j < high; j = j + 1) {
    let val1 = i32(getIntegerValueFromJsonObject(mapValues[j], "totalDiff"));

    if (val1 > pivot) {
      i = i + 1;

      // Swap mapValues[i] and mapValues[j]
      let tempValue: string = mapValues[i];
      mapValues[i] = mapValues[j];
      mapValues[j] = tempValue;

      // Swap mapKeys[i] and mapKeys[j]
      let tempKey: string = mapKeys[i];
      mapKeys[i] = mapKeys[j];
      mapKeys[j] = tempKey;
    }
  }

  // Swap mapValues[i + 1] and mapValues[high]
  let tempValue: string = mapValues[i + 1];
  mapValues[i + 1] = mapValues[high];
  mapValues[high] = tempValue;

  // Swap mapKeys[i + 1] and mapKeys[high]
  let tempKey: string = mapKeys[i + 1];
  mapKeys[i + 1] = mapKeys[high];
  mapKeys[high] = tempKey;

  return i + 1;
}

/**
 * 
 * 
 */

//
let retargetBlocksModulo: i64 = 1440
let lastRecentTimestamp: i32 = 0;
// let totalBlocksStreamed: i64 = 0

// experiment
let latestDiff: i64 = 0xffff00000000000; // 0xffff0000000000000000000000000000000000000000000000000000
// 0xffff000000000000
let commulativeDiff: i64 = 0


export function processHeaders(args: string[]): void {
//  console.log("retarget value is "+retarget(latestDiff,50000,51000).toString());
  
  // return 

  var preHeaders: string = db.getObject(`pre-headers/main`)
  if (!preHeaders) {
    preHeaders = '{}'
  }

  let headers: Array<string> = args
  console.log("----------------------------------------------");

  console.log("storing " + headers.length.toString() + " headers in pre-headers" );

  for (let i: i32 = 0; i < headers.length; i = i + 1) {

    // consoleLog("For Header " + i.toString());

    let rawBH: string = headers[i];
    // console.log("raw bh is " + rawBH);

    let decodeHex: Uint8Array = Uint8ArrayFromBufferHex(rawBH);
    // console.logUint8Array(decodeHex)
    if (decodeHex != null) {
      // console.log("array inside index.ts is ")

      const prevBlock = extractPrevBlockLE(decodeHex);
      // console.log("prevBlock of " + (i + 1).toString() + "th is " + prevBlock);

      if (prevBlock != "") {
        // console.log("it exists")
      }
      // console.log(prevBlock);


      let timestamp: string = extractTimestampStr(decodeHex)
      // let timestampEpoch: number = extractTimestampEpoch(decodeHex)


      const merkleRoot = extractMerkleRootLE(decodeHex)
      const headerHash = hash256(decodeHex);
      // console.log("header hash is " + headerHash);

      let diff: u64 = 0;
      diff = u64(validateHeaderChain(decodeHex))

      let prevDiff: i64 = 0;
      let prevHeight: i64 = 0;
      if (prevBlock === '0000000000000000000000000000000000000000000000000000000000000000') {
        prevDiff = 0;
        prevHeight = -1;
      } else if (!isNullObject(getStringValueFromJsonObject(preHeaders, prevBlock))) {
        // console.log("updating height");

        let prevBlockVal: string = getStringValueFromJsonObject(preHeaders, prevBlock);
        prevDiff = getIntegerValueFromJsonObject(prevBlockVal, "totalDiff")
        prevHeight = getIntegerValueFromJsonObject(prevBlockVal, "height")


      } else {
        // continue;
      }

      let height = prevHeight + 1


      let decodedHeader: Header = new Header(
        prevBlock,
        getISODate(timestamp),
        merkleRoot,
        diff,
        diff + prevDiff,
        height,
        rawBH
      )

      // console.log("header for " + rawBH);
      // decodedHeader.print()

      // decodedHeader.print(s)
      // preHeaders.set(prevBlock, (decodedHeader.json()))

      preHeaders = setValueInJsonString(preHeaders, headerHash, decodedHeader.json())
    }




  }
  console.log("stored");

  console.log("----------------------------------------------");


  // console.log("pre-headers updated to " + preHeaders);
  // console.log("outside headers")

  // var preHeaderValues: Array<string> = preHeaders.values()
  // var mapKeys: Array<string> = preHeaders.keys()

  // printing map

  console.log("getting keys and values of pre-headers ");
  
  var mapValues: Array<string> = getJsonStringObjectValues(preHeaders);
  var mapKeys: Array<string> = getJsonStringObjectKeys(preHeaders);
  // console.log("map values before sorting ");
  // printStringArray(mapValues)
  console.log("----------------------------------------------");

  console.log("sorting " + mapValues.length.toString() + " items");
  quicksort(mapValues, mapKeys, 0, mapValues.length - 1);
  console.log("sorted ");
  console.log("----------------------------------------------");

  // console.log("map values after sorting ");
  // printStringArray(mapValues)
  // mapValues is sorted

  let topHeader: string = mapKeys[0]
  // console.log("Top header is " + topHeader);


  // console.log("modifying preHeaders");
  preHeaders = '{}';
  console.log("----------------------------------------------");

  console.log("storing " + mapKeys.length.toString() + "keys in preheaders");

  for (let j = 0; j < mapKeys.length; j++) {
    const key = mapKeys[j];
    const val = mapValues[j]
    preHeaders = setValueInJsonString(preHeaders, key, val)
  }
  console.log("stored");

  console.log("----------------------------------------------");

  // console.log("modified preHeaders "+preHeaders);

  // console.log("Map Now" + mapValues.length.toString())

  // printStringArray(mapValues)

  let blocksToPush = new Array<string>(mapValues.length)
  let curDepth: i64 = 0;
  // @ts-ignore
  let prevBlock: string = '';

  console.log("----------------------------------------------");
  console.log("validating " + mapValues.length.toString() + " blocks on depth " + validity_depth.toString());

  let idx: i32 = 0
  for (; ;) {
    // console.log("idx is " + idx.toString());
    // console.log("curredepth is " + curDepth.toString());
    // console.log("PREv block is " + prevBlock);

    if (idx >= mapValues.length) {
      // console.log("breaking loop");

      break;
    }
    // if (prevBlock)

    if (prevBlock == '') {
      // console.log("getting prevBlock of current topHeader");
      prevBlock = topHeader
      // console.log("PrevBlock became " + prevBlock);

    }


    if (JsonObjectMapHas(prevBlock, preHeaders)) {
      // console.log("pre-headers have prevBlock as " + prevBlock);

      //             headersState[key] = await state.pull(`headers/${key}`) || {}

      if (curDepth > validity_depth) {
        blocksToPush[idx++] = getStringValueFromJsonObject(preHeaders, prevBlock)
      } else {
        curDepth = curDepth + 1;
      }
    } else {
      // console.log("breaking loop cause preHeaders dont contain " + prevBlock);

      break;
    }
    /**
     * prevBlock = preheaders[prevBlock].prevBlock
     * 
     * currprevBlock=preheaders[prevBlock]
     * prevBlock = currprevBlock.prevBlock
        
     */
    /**
     * 
     *  targetBlock=getStringValueFromJsonObject(prevBlock,preHeaders)
     *  where target is similar to preheaders[prevBlock] , and then we get the specified header and inside it we get it's `prevBlock` property value
     *
     * */

    let targetBlock: string = getStringValueFromJsonObject(preHeaders, prevBlock)
    // console.log("target block is " + targetBlock);

    prevBlock = getStringValueFromJsonObject(targetBlock, "prevBlock")



  }
  blocksToPush = blocksToPush.slice(0, idx)
  console.log("validated ");
  console.log("----------------------------------------------");

  // console.log("pre-headers after sorting " + preHeaders);
  // return
  console.log("#Blocks to Push are " + idx.toString())
  // for (let i: i32 = 0; i < blocksToPush.length; i = i + 1) {
  //   // console.log(blocksToPush[i]);

  //   // let h: Header = Header.from(blocksToPush[i]);
  //   // h.print()

  // }


  // console.log("Header state before pushing the blocks ")
  // printHeaderState(headersState);
  console.log("----------------------------------------------");
  console.log("Applying height threshold and retargeting algorithm ");

  let highestHeight: i64 = 0;
  // let headerKeysArray=[];
  for (let i: i32 = 0; i < blocksToPush.length; i = i + 1) {

    let __block: string = blocksToPush[i]
    // console.log(__block);

    let _height: i64 = getIntegerValueFromJsonObject(__block, "height");
    let _block_raw = getStringValueFromJsonObject(__block, "raw");
    let dateString = getStringValueFromJsonObject(__block, "timestamp")
    // console.log(dateString);

    let timestamp = (getEpochTime(dateString))

    // console.log("height is " + _height.toString());
    // console.log("timestamp is " + timestamp.toString());

    // console.log("raw is " + _block_raw);


    const key = calcKey(u64(_height))
    // console.log("key is " + key);


    //Get headers in memory if not available
    if (!headersState.has(key)) {
      // 
      // console.log("not in memory ");
      let headerKey = "headers/" + key;
      // headerKeysArray.push(headerKey);
      let pullKeyHeader: string = db.getObject(headerKey);


      if (!isNullObject(pullKeyHeader)) {
        // console.log("not null object " + pullKeyHeader);

        headersState.set(key, pullKeyHeader)
      }
      else {
        // json.from '{}'
        // console.log(" null object");

        headersState.set(key, "{}")


      }

    }
    // let headerStatekeys = headersState.keys()

    if (headersState.has(key)) {
      // console.log("headerstate contains key " + headersState.get(key));

      //         headersState.set(key, pullKeyHeader)

      // if block height is zero 
      let h: string = headersState.get(key)
      // console.log("h " + h);

      // let headerStateInstance: Header = Header.from(h.stringify())
      let keyHeader = headersState.get(key)
      // keyHeader.set(_height.toString() + "", _block_raw);
      keyHeader = setValueInJsonString(keyHeader, _height.toString(), _block_raw)

      let heightVal: i64 = getIntegerValueFromJsonObject(h, "height");
      // console.log("heightval " + heightVal.toString());

      if (heightVal == -1) {
        headersState.set(key, keyHeader)
      }



    }
    if (highestHeight < _height) {
      console.log("updating highest height to "+highestHeight.toString());
      highestHeight = _height
    }


    commulativeDiff = commulativeDiff + i32(getIntegerValueFromJsonObject(__block, "diff"))

    if (_height % retargetBlocksModulo == 0) {
      // currentPreHeaderMap read it's timestamp
      // latestDiff=0
      console.log("retarget " + " old timestamp: " + lastRecentTimestamp.toString() + " new timestamp : " + timestamp.toString());
      latestDiff = retarget(latestDiff, lastRecentTimestamp, timestamp);
      console.log("difficulty adjusted to " + latestDiff.toString());
      lastRecentTimestamp = (timestamp)


    }

  }
  console.log("height and retargeting applied ");

  console.log("----------------------------------------------");


  // return
  // console.log("preHeaders before highest height threshhold " + preHeaders);

  let preheaderKeys = getJsonStringObjectKeys(preHeaders)

  // clearing it
  console.log("----------------------------------------------");
  console.log("clearing pre-headers with size of " + preheaderKeys.length.toString());

  for (let i: i32 = 0; i < preheaderKeys.length; i = i + 1) {

    let key: string = preheaderKeys[i]
    let currentPreHeaderMap: string = getStringValueFromJsonObject(preHeaders, key)
    let height: i64 = i64(getIntegerValueFromJsonObject(currentPreHeaderMap, "height"))
    // preHeaders = deleteKeyFromObject(preHeaders, key);

    if (highestHeight >= height) {
      // console.log("deleting it ");
      
      // console.log("highestHeight" + highestHeight.toString())
      // console.log("current key highest" + height.toString())

      // preHeaders.delete(key);
      preHeaders = deleteKeyFromObject(preHeaders, key);

    } else {
      // console.log("highestHeight := " + highestHeight.toString())
      // console.log("current key highest := " + height.toString())

      // break;
    }
  }
  console.log("cleared ");

  console.log("----------------------------------------------");

  // console.log("preHeaders after highest height threshhold " + preHeaders);
  // console.log("--------Header state-------");

  let headerKeys = headersState.keys()
  console.log("----------------------------------------------");
  console.log("Header state after pushing the blocks ")
  // printHeaderState(headersState);

  console.log("----------------------------------------------");

  console.log("storing header key value pairs with size of " + headerKeys.length.toString());

  for (let i: i32 = 0; i < headerKeys.length; i = i + 1) {

    let key: string = headerKeys[i]
    let val: string = getStringValueFromJsonObject(preHeaders, key)
    // console.log("setting " + key + " to " + val);

    let command: string = "headers/" + key;

    let newMap = new Map<string, string>();
    newMap.set(key, val);

    db.setObject(command, val)
    // headersState[key] = update(command,val) 

  }


  db.setObject('pre-headers/main', preHeaders)
  console.log("----------------------------------------------");

  console.log("stored pre-headers/main");

  console.log("______________________________________");

  let state: JSON.Obj = <JSON.Obj>JSON.parse(db.getObject('pre-headers/main'));
  // if (isNullObject(state)) {
  //   console.log("preHeaders/main is Null at the end ");

  // }
  // else


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

export function main(args: string): string {
  console.log("inside main");

  // console.log("received headers in main " + args);
  let obj: JSON.Obj = <JSON.Obj>JSON.parse(args);
  let keys = obj.keys;
  let headersArray: string[] = []
  console.log("processing " + keys.length.toString() + " blocks");

  for (let j = 0; j < keys.length; j++) {

    const key = keys[j];
    headersArray.push(getStringValueFromJsonObject(args, key))

  }

  processHeaders(headersArray);
  return "success";


}






export function createBufferFromBase64(base64String: string): string {
  // Decode the base64 string into a byte array
  let decodedBytes: string = base64(base64String);
  consoleLog(decodedBytes)
  return decodedBytes;

}