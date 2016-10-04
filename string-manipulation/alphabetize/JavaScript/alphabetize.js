// Write a JavaScript function that returns a passed string with letters in alphabetical order.
// Example string : 'webmaster'
// Expected Output : 'abeemrstw'
// Assume punctuation and numbers symbols are not included in the passed string.


function alphabetize(string) {
  var sentenceArr = string.split(' ')
  var finalSentence = []
  sentenceArr.forEach(function(entry) {
    var newArr = entry.split('').sort();
    finalSentence.push(newArr.join(''));
  });
  console.log(finalSentence.join(' '))
};

alphabetize("webmaster is here")
