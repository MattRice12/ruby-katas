
function isPalindrome(string) {
  var original = string.toLowerCase().replace(/\W*/g, '');
  var originalReverse = original.split('').reverse().join('');

  if (original === originalReverse)
    { return console.log(string + " IS a palindrome!")
  } else
    { return console.log(string + " IS NOT a palindrome!")
  }
}

isPalindrome("tacocat")
isPalindrome("buffalo")
isPalindrome("t a c o c a t")
isPalindrome("t'a'c'o'c'a't")
isPalindrome("t#a(co    c!?A....T")
isPalindrome("aaaa")
isPalindrome("b")
isPalindrome("What's the deal?")
