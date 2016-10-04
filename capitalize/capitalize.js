// Write a JavaScript function that accepts a string as a parameter and converts the first letter of each word of the string in upper case
// Example string : 'the quick brown fox'
// Expected Output : 'The Quick Brown Fox '


function capitalize(string) {
  let sentenceArr = string.split(' ');
  let finalSentence = sentenceArr.map(function(entry, i) {
    let upperLetter = entry[0].toUpperCase();
    return entry.replace(entry[0], upperLetter);
  });
  return finalSentence.join(' ');
};


console.log(capitalize("bats are fat"));
console.log(capitalize("dogs are skinny"));
console.log(capitalize("this lunch is going to be delicious!"));
console.log(capitalize("wHAT iS yOUR dEAL!?!?!?!"));
console.log(capitalize("this is your wrap"));
