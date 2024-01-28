import pkg from '@summa-tx/bitcoin-spv-js';
const { BTCUtils, ValidateSPV, deserializeSPVProof, } = pkg;

 function retarget (previousTarget: any, first_timestamp: any, last_timestamp: any)  {
    return  (BTCUtils.retargetAlgorithm(BigInt(previousTarget), first_timestamp, last_timestamp))
  }

console.log(retarget(BigInt('0xffff0000000000000000000000000000000000000000000000000000'),50000,51000));



