function perfectNumRange(max) {
  var perfectArr = [];
  for (var num = 1; num < max; num++) {
    if (perfectNum(num) === num) perfectArr.push(num);
  }
  return perfectArr;
};

function perfectNum(num) {
  var numArr = []
  for (var j = num - 1; j > 0; j--) {
    if (num % j === 0) numArr.push(j);
  }
  var sum = numArr.reduce((a, b) => a + b, 0);
  return sum
};

console.log(perfectNumRange(500));
