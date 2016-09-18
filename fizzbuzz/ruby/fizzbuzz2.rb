class Fizzbuzz
  def run(n)
    arr = []
    arr << n.to_s + " "
    arr << "Fizz" if n % 3 == 0
    arr << "Buzz" if n % 5 == 0
    puts arr.join("")
  end
end

n = 100
100.times do
  Fizzbuzz.new.run(n)
  n -= 1
end
