
# Person has a bunch of pennies
# Person wants to convert them into the least amount of quarters, nickels, and dimes.
# Any remaining pennies are counted too
#_______________________________
# Get total amount of pennies
# Reduce by quarters
  # Push quarters into an array
# Reduce by dimes
  # Push dimes into an array
# Reduce by nickels
  # Push nickels into an array
# Push remaining pennies into array
# Count number of each coin in array

class CoinChanger
  def calculate(amount)
    coins = []
    types = [25, 10, 5, 1]
    types.each do |t|
      while amount >= t
        coins << "#{t}"
        amount -= t
      end
    end
    coins.join(", ")
  end
end

puts CoinChanger.new.calculate(99)
