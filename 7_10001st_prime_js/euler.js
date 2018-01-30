
// Problem 7
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//
// What is the 10 001st prime number?

// first solution

// var userNum;
// var primes;
//
// function buildBase(top) {
//   var base = [];
//   for (var i=1;i<top;i++) {
//     base.push(i);
//   }
//   return base;
// }
//
// function sieve(arr) {
//   for (i = 2; i < userNum ; i += 1) {
//     for (j = i+i ; j <= userNum ; j = j + i) {
//       arr.splice(arr.indexOf(j),1,"-");
//     }
//   }
//   var filteredArr = arr.filter(item => item !== "-");
//   return filteredArr;
// }
//
// $(document).ready(function() {
//   $("#mainform").submit(function(event){
//     event.preventDefault();
//
//     var startTime = performance.now();
//
//     // grab user's input
//     userNum = parseInt($("#input1").val());
//
//     var primes = sieve(buildBase(userNum));
//     var timeTaken = performance.now() - startTime;
//
//     // clear output
//     $("#numberofprimes").text("");
//     $("#primelist").text("");
//     // show new output
//     console.log('10000 prime = ', primes[10000]);
//     console.log('10001 prime = ', primes[10001]);
//     console.log('10002 prime = ', primes[10002]);
//     // 10000 prime =  104729
//     // 10001 prime =  104743
//     // 10002 prime =  104759
//     $("#numberofprimes").append(primes.length);
//     $("#primelist").append(primes.join('  '));
//     console.log('time taken = ' + timeTaken.toFixed(2) + ' ms');
//
//   });
// });


// answer
// 10001 prime =  104743
// takes about 4 mintues with my version of the sieve method


// another method



function isPrime(num) {
    if (num == 2 || num == 3) return true;
    if (num % 2 == 0) return false;

    for (var i = 3; i <= Math.sqrt(num); i += 2)
        if (num % i == 0)
            return false;

    return num > 1;
}

$(document).ready(function() {
  $("#mainform").submit(function(event){
    event.preventDefault();

    // clear output
    $("#numberofprimes").text(" ");
    $("#primelist").text(" ");

    var startTime = performance.now();
    var prime = undefined;

    // grab user's input, this is the Nth prime to find counting from 1
    var userNum = parseInt($("#input1").val());

    var count = 0;
    var number = 2;

    while (true) {
        if (isPrime(number)) {
            count++
            if (count == userNum) {
                prime = number
                break;
            }
        }
        number++;
    }

    var timeTaken = ( performance.now() - startTime ).toFixed(2);

    $("#numberofprimes").append('the '+ userNum + 'th prime = '+ prime);
    $("#primelist").append('time taken = ' + timeTaken + ' ms');

  });
});
