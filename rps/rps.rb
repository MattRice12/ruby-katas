# Explorer Mode
  #
  # The game should ask the player for their choice of "rock", "paper", or "scissors". (use gets.chomp)
  # The game should then randomly select the computer's selection
  # The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
  # Rock beats scissors
  # Paper beats Rock
  # Scissors beats Paper

# Adventurer Mode
  #
  # Instead of asking the player for their choice, have the computer automatically randomly select both the player and computer
  # run the simulation 1000 times
  # Track who which choice wins the most often

# Epic Mode
  #
  # Create a Game class
  # Use attr_accessor for your data.

#_______________________________________________________________________

ASK = "Rock, Paper, or Scissors?"

def shoot
  arr = ["rock", "paper", "scissors"]
  comp_play = arr.sample
  play = response(ASK)

  puts "\nComputer chose #{comp_play}"
  puts "You chose #{play}"

  case play.downcase
  when comp_play
    puts "Tie Game!"
  when "rock"
    puts "You lose!" if comp_play == "paper"
    puts "You win!" if comp_play == "scissors"
  when "paper"
    puts "You lose!" if comp_play == "scissors"
    puts "You win!" if comp_play == "rock"
  when "scissors"
    puts "You lose!" if comp_play == "rock"
    puts "You win!" if comp_play == "paper"
  end
end

def response(question)
  puts question
  gets.chomp
end

shoot
