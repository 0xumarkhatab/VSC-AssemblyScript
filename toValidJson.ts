const jsonString = `{"000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f":"{\"prevBlock\":\"0000000000000000000000000000000000000000000000000000000000000000\",\"timestamp\":\"2009-01-03T18:15:05.000Z\",\"merkleRoot\":\"4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b\",\"diff\":1,\"totalDiff\":1,\"height\":0,\"raw\":\"0100000000000000000000000000000000000000000000000000000000000000000000003ba3edfd7a7b12b27ac72c3e67768f617fc81bc3888a51323a9fb8aa4b1e5e4a29ab5f49ffff001d1dac2b7c\"}`;
// ... (include the rest of the JSON string)

// Replace `\"` with `"`
const cleanedString = jsonString.replace(/\\"/g, '"');

// Remove extra backslashes
const validJsonString = cleanedString.replace(/\\/g, "");

// Parse the valid JSON string into an object
const validJsonObject = JSON.parse(validJsonString);

console.log(validJsonObject);
