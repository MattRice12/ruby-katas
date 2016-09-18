
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
    while amount >= 25
      coins << "25"
      amount -= 25
    end

    while amount >= 10
      coins << "10"
      amount -= 10
    end

    while amount >= 5
      coins << "5"
      amount -= 5
    end

    while amount >= 1
      coins << "1"
      amount -= 1
    end

    coins.join(", ")
  end
end
