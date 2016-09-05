# Explorer Mode
  #
  # Write a method called check_age that is called every time the script is run.
  # When I run bouncer.rb I would like it to ask my age. It then tells me what I can do based on my age.
  # If I am younger than 18, I can do nothing.
  # If I am older than 18, I can vote.
  # If I am older than 18, I can smoke.
  # If I am older than 21, I can drink.
  # If I am older than 25, I can rent a car.

# Adventurer Mode
  #
  # Modify the program to run in a loop constantly asking my age until the user asks to quit.


# Epic Mode
  #
  # Modify the program to first ask your country (US or UK).
  # If you are in the US, the rules stay the same.
  # If you are in the UK, the rules will change slightly.
  # If you are 18 you can drink
  # if you are 16 or 17 ask the user if their parents are there, if the answer is yes, then they can drink
  # Allow the user to change their country, age, or quit

#_________________________________________________________________

COUNTRY = "\nAre you currently in the US or UK? => "
AGE = "\nWhat is your age? => "
PARENTS = "\nYou're too young to drink without parental supervision. Are your parents here? => "
CONTINUE = "\nWould you like to continue? [Y/n] => "
BAD_INPUT = "\nI'm sorry, I didn't catch that... "
TOO_YOUNG = "You're too young to do anything!"

class Bouncer
  def check_age
    arr = []
    check_country(arr)
    bounce(arr)
    ask_to_continue
  end

  private

  def check_country(arr)
    country = response(COUNTRY)
    return get_response_US(arr) if country.downcase == "us"
    return get_response_UK(arr) if country.downcase == "uk"
    print BAD_INPUT
    check_age
  end

  def bounce(arr)
    return puts TOO_YOUNG if arr.empty?
    return puts "You can #{arr.join(" and ")}." if arr.count == 1 || arr.count == 2
    last = arr.pop
    puts "You can #{arr.join(", ")}, and #{last}."
  end

  def ask_to_continue
    continue = response(CONTINUE)
    check_age if continue.downcase == "y" || continue == ""
    return if continue.downcase == "n"
    print BAD_INPUT
    ask_to_continue
  end

  def response(question)
    print question
    gets.chomp
  end

  def get_response_US(arr)
    age = response(AGE).to_i
    arr.push("vote", "smoke") if age >= 18
    arr.push("drink") if age >= 21
    arr.push("rent a car") if age >= 25
  end

  def get_response_UK(arr)
    age = response(AGE).to_i
    arr.push("vote", "smoke", "drink") if age >= 18
    parents(arr) if age == 16 || age == 17
    arr.push("rent a car") if age >= 25
  end

  def parents(arr)
    parent_supervision = response(PARENTS)
    return arr.push("drink") if parent_supervision.downcase == "y"
    return if parent_supervision.downcase == "n"
    print BAD_INPUT
    parents(arr)
  end
end

Bouncer.new.check_age
