// Write a JavaScript function that accepts a string as a parameter and counts the number of vowels within the string.
// Note : As the letter 'y' can be regarded as both a vowel and a consonant, we do not count 'y' as vowel here.
// Example string : 'The quick brown fox'
// Expected Output : 5

function vowelCounter(sentence){
  var sentArr = sentence.split("");
  var count = 0;
  sentArr.forEach(function(letter){
    if (letter.match(/[aeiouAEIOU]/)) {
      count++;
    };
  });
  console.log('Vowel Count: ' + count + ' ----> "' + sentence + '"');
};

vowelCounter("Eat Pray Love");
vowelCounter("This string has six vowels");
