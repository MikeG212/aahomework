const readline = require('readline'); //this is magic, ask how require works

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  reader.question('Would you like some tea?', function (res) {
    console.log(`You replied ${res}.`);
    reader.question('Would you like some biscuits?', function (res2) {
      console.log(`You replied ${res2}.`);

      const first = (res === 'yes') ? 'do' : 'don\'t'; //make sure you use const
      const second = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${first} want tea and you ${second} want biscuits.`);
      reader.close();
    });
  });
}

// teaAndBiscuits();
