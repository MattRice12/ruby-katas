
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
  def run(max)
    max.times do |n|
      n += 1
      case 0
      when n % 15 then puts "fizzbuzz"
      when n % 5  then puts "buzz"
      when n % 3  then puts "fizz"
      else
        puts n
      end
    end
  end
end

Fizzbuzz.new.run(15)
