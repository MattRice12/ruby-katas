
# class Fizzbuzz
#   def run(range)
#     range.to_a.reverse.each do |n|
#       if n % 15 == 0
#         puts "fizzbuzz"
#       elsif n % 5 == 0
#         puts "buzz"
#       elsif n % 3 == 0
#         puts "fizz"
#       else
#         puts n
#       end
#     end
#   end
# end
#
# Fizzbuzz.new.run(1..100)

#_________________________

class Fizzbuzz
  def run(n)
    case 0
    when n % 15 then "fizzbuzz"
    when n % 5  then "buzz"
    when n % 3  then "fizz"
    else
      n
    end
  end
end

puts Fizzbuzz.new.run(15)
