/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/index/setU8
 * @param arr `~lib/arraybuffer/ArrayBuffer`
 * @param idx `u8`
 * @param value `u8`
 */
export declare function setU8(arr: ArrayBuffer, idx: number, value: number): void;
/**
 * assembly/index/getU8
 * @param arr `~lib/arraybuffer/ArrayBuffer`
 * @param idx `u8`
 * @returns `u8`
 */
export declare function getU8(arr: ArrayBuffer, idx: number): number;
/**
 * assembly/index/main
 * @returns `~lib/string/String`
 */
export declare function main(): string;
/**
 * assembly/index/createBufferFromBase64
 * @param base64String `~lib/string/String`
 * @returns `~lib/string/String`
 */
export declare function createBufferFromBase64(base64String: string): string;
