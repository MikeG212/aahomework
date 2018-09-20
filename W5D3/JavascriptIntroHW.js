function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping1(); // in block, in block

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping2(); // in block, out of block

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping3(); // SyntaxError

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping4(); // in block, out of block

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

mysteryScoping5(); // SyntaxError

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(phrase, subphrase) {
  return phrase.includes(subphrase);
}

function fizzBuzz(arr){
  var res_arr = []
  for(var i = 0; i <= arr.length; i++){
    if (arr[i] % 3 === 0){
      res_arr.push(arr[i]);
    } else if (arr[i] % 5 === 0) {
      res_arr.push(arr[i]);
    }
  }

  return res_arr
}

fizzBuzz([1,2,3,4,5,15])

function isPrime(num)
  if (num < 2) {
    return false;
  }
  for (var i = 2, i < num, i++) {
    if (num % i === 0){
      return false;
    }
  }

  return true:
}

function sumOfPrimes(num) {
  var sum = 0
  var numPrimes = 0
  var i = 2
  while numPrimes < num {
    if (isPrime(i)) {
      sum += i;
      numPrimes += 1;
    }

    i += 1;
  }

  return sum;
}

function titleize(array, cb) {
  return array.map(x => 'Mx. ${x} ${cb}');
}
