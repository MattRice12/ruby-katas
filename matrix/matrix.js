// Write a JavaScript function which returns the n rows by n columns identity matrix.

function matrix(arr){
  var secondNum = arr.length;
  var firstNum = 0;
  if (arr.length) firstNum = arr[0].length;
  return firstNum + "x" + secondNum;
};

console.log(matrix([]));
console.log(matrix([[1,2,3],[4,5,6],[7,8,9]]));
console.log(matrix([[1,2,null],[4,5,6],[7,8,9],["a","b","c"]]));
