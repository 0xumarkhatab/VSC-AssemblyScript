import { JSON, JSONEncoder, JSONDecoder, JSONHandler } from "assemblyscript-json/assembly/";

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

export function main(): string {
  let obj = new Header(
    "2000000000000000000000000000000000000000000000000000000000000000",
    "12-12-2000",
    "4e5c75b44b0923a92126c0296b528d8843fd6676d9ad37031e7fa96505f88d1f",
    1677022373,
    9623412,
    1677022373,
    "dummy raw data"
  )

  let json_rep: Header = Header.from(obj.json());
  let val: string = json_rep.prevBlock
  return val;

}
