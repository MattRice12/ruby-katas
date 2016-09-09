# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"
# Hint: Use regex

def pigatize(text)
  if starts_with_vowel?(text)
  else
  end
end

def starts_with_vowel?(text)
  true
end

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0 # Break out of the loop if I say nothing
  puts pigatize(text)
