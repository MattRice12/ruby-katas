function fizzBuzz(num) {
  if (num % 15 == 0) {
    console.log(num + ": fizzbuzz")
  } else if (num % 5 == 0) {
    console.log(num + ": buzz")
  } else if (num % 3 == 0) {
    console.log(num + ": fizz")
  } else {
    console.log(num)
  }
};

n = 1
while (n <= 15) {
  fizzBuzz(n)
  n++;
}
