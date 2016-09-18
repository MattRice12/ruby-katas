# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"
# Hint: Use regex

def pigatize(text)
  phrase = text.split(" ").map do |word|
    check_word(word)
  end
  phrase.join(" ") + "ay"
end

def check_word(text)
  if starts_with_vowel?(text)
    text
  else
    arr = text.split("")
    vowel = arr.shift
    arr << vowel
    text = arr.join
    check_word(text)
  end
end

def starts_with_vowel?(text)
  text.downcase[/^[aeiou]/]
end

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0 # Break out of the loop if I say nothing
  puts pigatize(text)
end
