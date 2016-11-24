class RunLengthEncoding
  def self.encode(input)
    final_arr = []
    count = 1
    input.split("").each_with_index do |letter, i|
      if input[i] == input[i + 1]
        count += 1
      else
        final_arr << "#{count}#{letter}" if count > 1
        final_arr << letter if count == 1
        count = 1
      end
    end
    final_arr.join
  end

  def self.decode(input)
    final_arr = []
    count = 1
    input.split("").each_with_index do |letter, i|
      if letter[/[0-9]/]
        count = letter.to_i
        count = (input[i - 1] + letter).to_i if input[i - 1][/[0-9]/]
      else
        final_arr << letter * count
        count = 1
      end
    end
    final_arr.join
  end
end

module BookKeeping
  VERSION = 2
end
