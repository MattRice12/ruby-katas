// Write a JavaScript function that generates all combinations of a string.
// Example string : 'dog'
// Expected Output : d,do,dog,o,og,g

function comboCount(string){
  var arr = string.split('')
  arr.forEach(function(entry) {
    var newArr = []
    var i = arr.indexOf(entry);
    while (i < arr.length) {
      newArr.push(arr[i])
      console.log(newArr.join(""));
      i++;
    };
  })
};


comboCount("dog");
