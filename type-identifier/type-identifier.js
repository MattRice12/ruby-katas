// Write a JavaScript function which accepts an argument and returns the type.
// Note : There are six possible values that typeof returns: object, boolean, function, number, string, and undefined.

function typeChecker(arg){
  return typeof(arg)
};

console.log(typeChecker(37));
console.log(typeChecker("butts"));
console.log(typeChecker(true));
console.log(typeChecker({}));
console.log(typeChecker(function myFunction(){}));
console.log(typeChecker(undefined));
