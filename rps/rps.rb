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

class RPS
  attr_accessor :player_wins, :comp_wins, :tie

  def initialize
    @player_wins = 0
    @comp_wins = 0
    @tie = 0
  end

  def shoot
    1000.times do
      arr = ["rock", "paper", "scissors"]
      comp_play = arr.sample
      player = arr.sample

      conditions(comp_play, player)
    end
    puts "Player: #{player_wins}"
    puts "Computer: #{comp_wins}"
    puts "Ties: #{tie}"
  end

  def conditions(comp_play, player)
    case player
    when comp_play
      @tie += 1
    when "rock"
      win_lose(comp_play, "paper", "scissors")
    when "paper"
      win_lose(comp_play, "scissors", "rock")
    when "scissors"
      win_lose(comp_play, "rock", "paper")
    end
  end

  def win_lose(comp_play, lose, win)
    @player_wins += 1 if comp_play == lose
    @comp_wins += 1 if comp_play == win
  end
end

RPS.new.shoot
