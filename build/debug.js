import * as __import0 from "bitcoin";
import * as __import1 from "sdk";
async function instantiate(module, imports = {}) {
  const __module0 = imports.bitcoin;
  const __module1 = imports.sdk;
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
    bitcoin: Object.assign(Object.create(__module0), {
      retarget(previousTarget, first_timestamp, last_timestamp) {
        // assembly/bitcoin/retarget(i64, i32, i32) => i64
        return __module0.retarget(previousTarget, first_timestamp, last_timestamp) || 0n;
      },
      base64(str) {
        // assembly/bitcoin/base64(~lib/string/String) => ~lib/string/String
        str = __liftString(str >>> 0);
        return __lowerString(__module0.base64(str)) || __notnull();
      },
    }),
    sdk: Object.assign(Object.create(__module1), {
      "console.log"(arg) {
        // assembly/index/consoleLog(~lib/string/String) => void
        arg = __liftString(arg >>> 0);
        __module1.console.log(arg);
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    processHeaders(args) {
      // assembly/index/processHeaders(~lib/array/Array<~lib/string/String>) => void
      args = __lowerArray((pointer, value) => { __setU32(pointer, __lowerString(value) || __notnull()); }, 5, 2, args) || __notnull();
      exports.processHeaders(args);
    },
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
    main(args) {
      // assembly/index/main(~lib/string/String) => ~lib/string/String
      args = __lowerString(args) || __notnull();
      return __liftString(exports.main(args) >>> 0);
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
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    __dataview.setUint32(header + 12, length, true);
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
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
  return adaptedExports;
}
export const {
  memory,
  processHeaders,
  setU8,
  getU8,
  main,
  createBufferFromBase64,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
    bitcoin: __maybeDefault(__import0),
    sdk: __maybeDefault(__import1),
  }
))(new URL("debug.wasm", import.meta.url));
function __maybeDefault(module) {
  return typeof module.default === "object" && Object.keys(module).length == 1
    ? module.default
    : module;
}
