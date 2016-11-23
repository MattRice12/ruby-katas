class Phrase

  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def word_count
    final_arr = []
    word_arr = @string.downcase.scan(/\b[\w']+\b/)
    word_arr.uniq.each { |word| final_arr << [word.strip, word_arr.count(word)] }
    Hash[*final_arr.flatten]
  end
end

module BookKeeping
  VERSION = 1
end
