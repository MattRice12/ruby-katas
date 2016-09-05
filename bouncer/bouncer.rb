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


class Bouncer
  def check_age
    arr = []


    print "Are you currently in the US or UK? => "
    country = gets.chomp

    if country.downcase == "us"
      get_response_US(arr)
    elsif country.downcase == "uk"
      get_response_UK(arr)
    else
      puts "I'm sorry, I didn't catch that..."
      check_age
    end

    bounce(arr)
    ask_to_continue
  end


  def get_response_US(arr)
    print "What is your age? => "
    age = gets.chomp.to_i
    arr.push("vote", "smoke") if age >= 18
    arr.push("drink") if age >= 21
    arr.push("rent a car") if age >= 25
  end

  def get_response_UK(arr)
    print "What is your age? => "
    age = gets.chomp.to_i
    arr.push("vote", "smoke", "drink") if age >= 18
    parents(arr) if age == 16 || age == 17
    arr.push("rent a car") if age >= 25
  end

  def parents(arr)
    print "You're too young to drink without parental supervision. Are your parents here? => "
    parent_supervision = gets.chomp
    return arr.push("drink") if parent_supervision.downcase == "y"
    return if parent_supervision.downcase == "n"
    print "I'm sorry, I didn't catch that... "
    parents
  end

  def bounce(arr)
    return puts "You can't do anything!" if arr.empty?
    return puts "You can #{arr.join(" and ")}." if arr.count == 1 || arr.count == 2
    last = arr.pop
    puts "You can #{arr.join(", ")}, and #{last}."
  end

  def ask_to_continue
    puts "Would you like to continue? [Y/n] => "
    continue = gets.chomp
    check_age if continue.downcase == "y" || continue == ""
    return if continue.downcase == "n"
    print "I'm sorry, I didn't catch that... "
    ask_to_continue
  end
end

Bouncer.new.check_age
