
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
    n.each do |num|
      case 0
      when num % 15 then puts "fizzbuzz"
      when num % 5  then puts "buzz"
      when num % 3  then puts "fizz"
      else
        puts num
      end
    end
  end
end

Fizzbuzz.new.run(1..15)
