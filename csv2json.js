const fs = require('fs');

// write to a new file named 2pac.txt

const csvFilePath='Transfer_Sent_Resume_PROD.csv'
const csv=require('csvtojson')
csv()
.fromFile(csvFilePath)
.then((jsonObj)=>{
  fs.writeFile('Transfer_Sent_Resume_PROD.json', JSON.stringify(jsonObj), (err) => {
    // throws an error, you could also catch it here
    if (err) throw err;

    // success case, the file was saved
    console.log('jsonObj saved!');
  });
  /**
   * [
   *  {a:"1", b:"2", c:"3"},
   *  {a:"4", b:"5". c:"6"}
   * ]
   */
