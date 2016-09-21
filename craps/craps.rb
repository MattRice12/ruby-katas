

class Craps
  def game
    first_die = rand(1..6)
    second_die = rand(1..6)
    win = [7, 11]
    lose = [2, 3, 12]
    result = first_die + second_die
    if win.include?(result)
      puts "#{result}: You win!"
    elsif lose.include?(result)
      puts "#{result}: You lose!"
    else
      game
    end
  end
end

Craps.new.game
