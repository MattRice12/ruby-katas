# The verify age function will take a single argument 'age' and it will check if that age is less than 21. If it is less than 21 than the function will print 'too young' otherwise it'll print 'proceed'.

def age_verifier(age)
  puts "Your age is #{age}. You are too young." if age < 21
  puts "Your age is #{age}. You may proceed." if age >= 21
end

age_verifier(22)
age_verifier(18)

10.times do
  age_verifier(rand(15..27))
end
