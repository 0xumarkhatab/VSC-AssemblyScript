import fs from 'fs';
import { BTCBlockStream } from './tests/bitcoin-utils';

const FILE_NAME = 'blocks.ts';

async function main() {
  let abortController = new AbortController();

  try {
    // Check if the file exists, if not create it with an empty array
    if (!fs.existsSync(FILE_NAME)) {
      fs.writeFileSync(FILE_NAME, '[]');
    }

    let blockCounter = 0;
    
    for await (let header of BTCBlockStream({
      height:0,
      signal: abortController.signal,
      continueHead: true,
    })) {
        console.log("header number "+blockCounter);
        
      // Read the existing data from the file with specified encoding
      const fileContent = fs.readFileSync(FILE_NAME, 'utf-8');

      // Check if the file is not empty
      const existingData = fileContent ? JSON.parse(fileContent) : [];

      // Append the new header to the existing data
      existingData.push(header.rawData);

      // Write the updated data back to the file
      fs.writeFileSync(FILE_NAME, JSON.stringify(existingData));

      blockCounter++;

      // Check if we have streamed 30,000 blocks, and exit the loop
      if (blockCounter >= 30000) {
        break;
      }
    }
  } catch (error) {
    console.error('Error:', error.message);
  } finally {
    // Cleanup or perform any necessary tasks
    abortController.abort();
  }
}

// Call the main function
main();
