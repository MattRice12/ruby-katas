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
WIN = "You WIN!"
LOSE = "You LOSE!"
TIE = "Tie Game!"

def shoot
  arr = ["rock", "paper", "scissors"]
  comp_play = arr.sample
  play = response(ASK)

  puts "\nComputer chose #{comp_play}"
  puts "You chose #{play}"
  conditions(comp_play, play)
end

def conditions(comp_play, play)
  case play.downcase
  when comp_play
    puts TIE
  when "rock"
    win_lose(comp_play, "paper", "scissors")
  when "paper"
    win_lose(comp_play, "scissors", "rock")
  when "scissors"
    win_lose(comp_play, "rock", "paper")
  end
end

def win_lose(comp_play, lose, win)
  puts LOSE if comp_play == lose
  puts WIN if comp_play == win
end

def response(question)
  puts question
  gets.chomp
end

shoot
