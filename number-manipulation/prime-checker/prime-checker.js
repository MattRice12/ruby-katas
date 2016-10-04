// Write a JavaScript function that accepts a number as a parameter and check the number is prime or not.
// Note : A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

function primeChecker(number){
  var prime = "***prime***";
  for (var i=2; i < number; i++) {
    if (number%i === 0) {
      prime = "NOT PRIME";
    }
  }
  return String(number) + ": " + prime;
};

console.log(primeChecker(2));
console.log(primeChecker(3));
console.log(primeChecker(4));
console.log(primeChecker(5));
console.log(primeChecker(21));
