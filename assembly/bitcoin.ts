export declare function Uint8ArrayFromBufferHex(arg0: string): Uint8Array
export declare function base64(str: string): string

export declare function extractPrevBlockLE(decodeHex: Uint8Array): string
export declare function extractTimestampStr(decodeHex: Uint8Array): string
export declare function extractTimestampEpoch(decodeHex: Uint8Array): number

export declare function extractMerkleRootLE(decodeHex: Uint8Array): string
export declare function hash256(decodeHex: Uint8Array): string
export declare function validateHeaderChain(decodeHex: Uint8Array): number
export declare function isValidProof(proof: any): bool