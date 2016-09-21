

class Craps
  def game(runs)
    total_wins = ""
    total_losses = ""
    n = 0
    while n < runs
      first_die, second_die = rand(1..6), rand(1..6)
      win, lose = [7, 11], [2, 3, 12]
      result = first_die + second_die
      total_wins += "|" if win.include?(result)
      total_losses += "|" if lose.include?(result)
      system("clear")
      puts "WINS: #{total_wins.length}: #{total_wins}"
      puts "LOSSES: #{total_losses.length}: #{total_losses}"
      n += 1
    end
  end
end

Craps.new.game(100)
