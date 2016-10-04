// Write a JavaScript function that accepts a string as a parameter and find the longest word within the string.

function longestWord(sentence) {
  let wordArr = sentence.split(' ');
  let finalArr = [];
  wordArr.forEach((word) => {
    if (finalArr.length === 0 || word.length > finalArr.join().length) {
      finalArr = [];
      finalArr.push(word);
    } else if (word.length === finalArr[0].length) {
      finalArr.push(word);
    }
  });
  return finalArr.join(", ");
};

console.log(longestWord("omg this is the longest word"));
console.log(longestWord("thousand is shorter than thousand"));
