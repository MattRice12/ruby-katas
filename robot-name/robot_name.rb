class Robot
  LETTERS = ('A'..'Z').to_a.freeze
  NAMES = []

  attr_accessor :name

  def initialize
    self.name = '%s%s%03d' % [LETTERS.sample, LETTERS.sample, rand(1000)]
    reset if NAMES.include?(self.name)
    NAMES << self.name
  end

  def reset
    initialize
  end
end

module BookKeeping
  VERSION = 2
end
