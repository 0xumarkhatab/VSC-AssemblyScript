import * as __import0 from "sdk";
import * as __import1 from "bitcoin";
import * as __import2 from "Date";
async function instantiate(module, imports = {}) {
  const __module0 = imports.sdk;
  const __module1 = imports.bitcoin;
  const __module2 = imports.Date;
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
    sdk: Object.assign(Object.create(__module0), {
      "console.log"(arg) {
        // assembly/index/consoleLog(~lib/string/String) => void
        arg = __liftString(arg >>> 0);
        __module0.console.log(arg);
      },
      "db.getObject"(key) {
        // ~lib/@vsc.eco/sdk/assembly/index/db.getObject(~lib/string/String) => ~lib/string/String
        key = __liftString(key >>> 0);
        return __lowerString(__module0.db.getObject(key)) || __notnull();
      },
    }),
    bitcoin: Object.assign(Object.create(__module1), {
      Uint8ArrayFromBufferHex(arg0) {
        // assembly/bitcoin/Uint8ArrayFromBufferHex(~lib/string/String) => ~lib/typedarray/Uint8Array
        arg0 = __liftString(arg0 >>> 0);
        return __lowerTypedArray(Uint8Array, 9, 0, __module1.Uint8ArrayFromBufferHex(arg0)) || __notnull();
      },
      extractPrevBlockLE(decodeHex) {
        // assembly/bitcoin/extractPrevBlockLE(~lib/typedarray/Uint8Array) => ~lib/string/String
        decodeHex = __liftTypedArray(Uint8Array, decodeHex >>> 0);
        return __lowerString(__module1.extractPrevBlockLE(decodeHex)) || __notnull();
      },
      extractTimestampStr(decodeHex) {
        // assembly/bitcoin/extractTimestampStr(~lib/typedarray/Uint8Array) => ~lib/string/String
        decodeHex = __liftTypedArray(Uint8Array, decodeHex >>> 0);
        return __lowerString(__module1.extractTimestampStr(decodeHex)) || __notnull();
      },
      extractMerkleRootLE(decodeHex) {
        // assembly/bitcoin/extractMerkleRootLE(~lib/typedarray/Uint8Array) => ~lib/string/String
        decodeHex = __liftTypedArray(Uint8Array, decodeHex >>> 0);
        return __lowerString(__module1.extractMerkleRootLE(decodeHex)) || __notnull();
      },
      hash256(decodeHex) {
        // assembly/bitcoin/hash256(~lib/typedarray/Uint8Array) => ~lib/string/String
        decodeHex = __liftTypedArray(Uint8Array, decodeHex >>> 0);
        return __lowerString(__module1.hash256(decodeHex)) || __notnull();
      },
      base64(str) {
        // assembly/bitcoin/base64(~lib/string/String) => ~lib/string/String
        str = __liftString(str >>> 0);
        return __lowerString(__module1.base64(str)) || __notnull();
      },
    }),
    Date: Object.assign(Object.create(__module2), {
      getISODate(timestamp) {
        // assembly/Date/getISODate(~lib/string/String) => ~lib/string/String
        timestamp = __liftString(timestamp >>> 0);
        return __lowerString(__module2.getISODate(timestamp)) || __notnull();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    setU8(arr, idx, value) {
      // assembly/index/setU8(~lib/arraybuffer/ArrayBuffer, u8, u8) => void
      arr = __lowerBuffer(arr) || __notnull();
      exports.setU8(arr, idx, value);
    },
    getU8(arr, idx) {
      // assembly/index/getU8(~lib/arraybuffer/ArrayBuffer, u8) => u8
      arr = __lowerBuffer(arr) || __notnull();
      return exports.getU8(arr, idx);
    },
    main() {
      // assembly/index/main() => ~lib/string/String
      return __liftString(exports.main() >>> 0);
    },
    createBufferFromBase64(base64String) {
      // assembly/index/createBufferFromBase64(~lib/string/String) => ~lib/string/String
      base64String = __lowerString(base64String) || __notnull();
      return __liftString(exports.createBufferFromBase64(base64String) >>> 0);
    },
  }, exports);
  function __lowerBuffer(value) {
    if (value == null) return 0;
    const pointer = exports.__new(value.byteLength, 1) >>> 0;
    new Uint8Array(memory.buffer).set(new Uint8Array(value), pointer);
    return pointer;
  }
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, 2) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    return new constructor(
      memory.buffer,
      __getU32(pointer + 4),
      __dataview.getUint32(pointer + 8, true) / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__new(12, id) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __setU32(pointer, value) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  return adaptedExports;
}
export const {
  memory,
  setU8,
  getU8,
  main,
  createBufferFromBase64,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
    sdk: __maybeDefault(__import0),
    bitcoin: __maybeDefault(__import1),
    Date: __maybeDefault(__import2),
  }
))(new URL("debug.wasm", import.meta.url));
function __maybeDefault(module) {
  return typeof module.default === "object" && Object.keys(module).length == 1
    ? module.default
    : module;
}
