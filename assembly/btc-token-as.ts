import { log, BigInt, crypto, util, Context, storage } from 'near-sdk-as';
import asBig from "as-big";

class BigDecimal {
  bigint: BigInt;

  static decimals: i32=10;

  constructor(value: string) {
    // Split the string into integer and decimal parts
    let parts: string[] = value.split(".");
    let ints: string = parts.length > 0 ? parts[0] : "0";
    let decis: string = parts.length > 1 ? parts[1] : "";

    // Pad the decimal part to the specified number of decimals
    decis = decis.padEnd(BigDecimal.decimals, "0");

    // Concatenate the integer and decimal parts
    let combinedValue: string = ints + decis;

    // Convert the combined value to an asBig instance
    this.bigint = asBig.of(combinedValue);
}

static fromBigInt(bigint: asBig): BigDecimal {
    let result = new BigDecimal("0");
    result.bigint = bigint;
    return result;
}

divide(divisor: BigDecimal): BigDecimal {
    let result = new BigDecimal("0");
    result.bigint = this.bigint.div(divisor.bigint);
    return result;
}

toString(): string {
    return this.bigint.toString();
}
}


class Transfer {
  dest: string;
  asset_type: 'TOKEN:WBTC';
  memo: string | null;
  inputs: Input[];

  constructor(dest: string, inputs: Input[], memo: string | null = null) {
    this.dest = dest;
    this.asset_type = 'TOKEN:WBTC';
    this.memo = memo;
    this.inputs = inputs;
  }
}

class Mint {
  dest: string;
  asset_type: 'TOKEN:WBTC';
  memo: string | null;
  amount: i32;

  constructor(dest: string, amount: i32, memo: string | null = null) {
    this.dest = dest;
    this.asset_type = 'TOKEN:WBTC';
    this.memo = memo;
    this.amount = amount;
  }
}

class Input {
  id: string;
  amount: i32;
  hash_lock: string | null;

  constructor(id: string, amount: i32, hash_lock: string | null = null) {
    this.id = id;
    this.amount = amount;
    this.hash_lock = hash_lock;
  }
}

class LedgerOutput {
  balance: i32;
  obalance: i32;
  asset_type: string;
  memo: string | null;
  address: string;
  controllers: Controller[] | null;
  outputs: Output[];
  inputs: Input[];
}

class Controller {
  type: 'DID';
  authority: string;
  lock: Lock | null;

  constructor(type: 'DID', authority: string, lock: Lock | null = null) {
    this.type = type;
    this.authority = authority;
    this.lock = lock;
  }
}

class Lock {
  type: 'time' | 'hash';
  value: i32 | string;

  constructor(type: 'time' | 'hash', value: i32 | string) {
    this.type = type;
    this.value = value;
  }
}

class Output {
  id: string;
  amount: i32;
  type: 'MINT' | 'REDEEM' | null;

  constructor(id: string, amount: i32, type: 'MINT' | 'REDEEM' | null = null) {
    this.id = id;
    this.amount = amount;
    this.type = type;
  }
}

class HtlcTransfer {
  blockLock: i32;
  hashLock: string;
  receiver: string;
  memo: string | null;
  inputs: Input[];

  constructor(
    blockLock: i32,
    hashLock: string,
    receiver: string,
    inputs: Input[],
    memo: string | null = null
  ) {
    this.blockLock = blockLock;
    this.hashLock = hashLock;
    this.receiver = receiver;
    this.memo = memo;
    this.inputs = inputs;
  }
}

function verifyLock(controller: Controller, params: { hashLockImage?: string }): bool {
  if (controller.lock !== null) {
    if (controller.lock.type == 'time') {
      if (controller.lock.value < Context.blockIndex && Context.sender == controller.authority) {
        return true;
      } else {
        return false;
      }
    } else if (controller.lock.type == 'hash') {
      if (!params.hashLockImage) {
        return false;
      }
      if (
        util.crypto.SHA256(params.hashLockImage) == controller.lock.value &&
        Context.sender == controller.authority
      ) {
        return true;
      } else {
        return false;
      }
    }
  }
  if (controller.authority == Context.sender) {
    return true;
  }
  return false;
}

function compileScript(pubKey: string, addrKey: string): Uint8Array {
  return util.buffer.from(
    '21' + pubKey + 'ad20' + addrKey,
    util.encoding.HEX
  ) as Uint8Array;
}

class BtcToken {
  static applyHtlc(tx: HtlcTransfer): void {
    const supposedController: Controller[] = [
      // Redeem
      new Controller('DID', Context.sender, new Lock('time', tx.blockLock)),
      // Receiver
      new Controller('DID', tx.receiver, new Lock('hash', tx.hashLock)),
    ];
    const address = util.crypto.SHA256(JSON.stringify(supposedController));

    // Implement the rest of the function...
  }

  static applyTx(tx: Transfer): void {
    // Implement the function...
  }

  static registerDeposit(args: { addr?: string }): void {
    const didAddr = args?.addr || Context.sender;
    const scriptCompiled = compileScript(CONFIG.WP_PUB, util.crypto.SHA256(didAddr));
    const hash160 = util.buffer.from(
      util.crypto.BTCUtils.hash160(scriptCompiled),
      util.encoding.HEX
    );
    // Implement the rest of the function...
  }

  static redeem(tx: Transfer): void {
    // Implement the function...
  }

  static redeemProof(args: { proof: any }): void {
    const relayState = storage.remote('BTCCR_CONTRACT');
    const proof = args.proof;
    const tx_id = util.crypto.reverseBytes(proof.tx_id);

    // Implement the rest of the function...
  }

  static calcKey(height: i32): string {
    const cs = 100
    const keyA = (Math.floor(f64(height / cs)) * cs).toString()
  
    return concat([keyA, "-", concat([keyA, cs.toString()])])
    
  }
  
  
  static mint(args: { proof: any; destAddr: string }): void {
    const relayState = storage.remote('BTCCR_CONTRACT');
    const proof = args.proof;
    const tx_id = util.crypto.reverseBytes(proof.tx_id);
  
    const bundleHeaders = relayState.getSome(`headers/${BtcToken.calcKey(proof.confirming_height)}`, {});
  
    const header = bundleHeaders[proof.confirming_height];
  
    try {
      const decodeHex = util.buffer.from(header, util.encoding.HEX);
      const prevBlock = util.crypto.BTCUtils.serializeHex(
        util.crypto.BTCUtils.extractPrevBlockLE(decodeHex)
      );
      const merkleRoot = util.crypto.BTCUtils.serializeHex(
        util.crypto.BTCUtils.extractMerkleRootLE(decodeHex)
      );
  
      const headerHash = util.crypto.BTCUtils.serializeHex(
        util.crypto.BTCUtils.hash256(decodeHex)
      );
  
      const confirming_header = {
        raw: header,
        hash: headerHash,
        height: proof.confirming_height,
        prevhash: prevBlock,
        merkle_root: merkleRoot,
      };
  
      const fullProof = {
        ...proof,
        confirming_header,
      };
  
      let validProof = util.crypto.ValidateSPV.validateProof(
        util.crypto.ser.deserializeSPVProof(JSON.stringify(fullProof))
      );
  
      if (validProof && !storage.getPrimitive<bool>(`wraps/${tx_id}`, false)) {
        let txIndex = -1;
        for (;;) {
          txIndex = txIndex + 1;
  
          try {
            const btcOutput = util.crypto.BTCUtils.extractOutputAtIndex(
              util.crypto.SPVUtils.deserializeHex((proof as any).vout),
              txIndex
            );
            const depHash = util.crypto.BTCUtils.extractHash(btcOutput);
  
            const addrHash = util.buffer.from([0x05]);
            addrHash.set(depHash, 1);
  
            const record = storage.getPrimitive<string | null>(
              `btc_addrs/${util.encoding.encodeBase58(addrHash)}`,
              null
            );
  
            let destAddr: string | null = null;
  
            if (record !== null) {
              destAddr = record;
            } else if (args.destAddr) {
              const key = util.crypto.SHA256(args.destAddr);
              const hash160 = util.crypto.BTCUtils.hash160(compileScript(CONFIG.WP_PUB, key));
  
              if (
                util.encoding.encodeBase58(hash160) === util.encoding.encodeBase58(depHash)
              ) {
                destAddr = args.destAddr;
              } else {
                continue;
              }
            } else {
              const key = util.crypto.SHA256(Context.sender);
              const hash160 = util.crypto.BTCUtils.hash160(compileScript(CONFIG.WP_PUB, key));
  
              if (
                util.encoding.encodeBase58(hash160) === util.encoding.encodeBase58(depHash)
              ) {
                destAddr = Context.sender;
              } else {
                continue;
              }
            }
  
            const val = util.crypto.BTCUtils.extractValue(btcOutput);
            const a = new BigDecimal(val.toString());
            const b = new BigDecimal(CONFIG.DECIMAL_PLACES);
            const amount = a.divide(b).toString();
  
            const output: LedgerOutput = {
              address: destAddr,
              balance: amount,
              obalance: amount,
              inputs: [
                {
                  id: tx_id,
                  amount: parseInt(amount),
                  index: txIndex,
                  type: 'MINT',
                },
              ],
              outputs: [],
              asset_type: 'TOKEN:WBTC',
            };
  
            const outputId = util.crypto.SHA256(JSON.stringify(output));
  
            storage.set<LedgerOutput>(`outputs/${outputId}`, output);
          } catch (ex) {
            log(ex);
            break;
          }
        }
  
        storage.set<bool>(`wraps/${tx_id}`, true);
      }
    } catch (ex) {
      log(ex);
    }
  }
  
}

const CONFIG = {
  BTCCR_CONTRACT: '42fe0195bb2fe0afe7e015871d8c5749d07177cc',
  WP_PUB: '034240ccd025374e0531945a65661aedaac5fff1b2ae46197623e594e0129e8b13',
  DECIMAL_PLACES: '100000000',
  ACCEPTABLE_FEE: 1, // 1% to cover exchange costs %
  MAX_GAS_FEE: 16000, // Maximum allowed gas fee for redeem transactions
};

const actions = {
  applyHtlc: function (tx: HtlcTransfer): void {
    BtcToken.applyHtlc(tx);
  },
  applyTx: function (tx: Transfer): void {
    BtcToken.applyTx(tx);
  },
  registerDeposit: function (args: { addr?: string }): void {
    BtcToken.registerDeposit(args);
  },
  redeem: function (tx: Transfer): void {
    BtcToken.redeem(tx);
  },
  redeemProof: function (args: { proof: any }): void {
    BtcToken.redeemProof(args);
  },
  calcKey: function (height: i32): string {
    return BtcToken.calcKey(height);
  },
  mint: function (args: { proof: any; destAddr?: string }): void {
    BtcToken.mint(args);
  },
};
function concat(arg0: any[]): string {
    throw new Error('Function not implemented.');
}

