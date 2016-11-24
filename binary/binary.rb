class Binary
  def initialize(binary)
    raise ArgumentError if binary.match(/[2-9]+|\D+/)
    @binary = binary.reverse
  end

  def to_decimal
    sum = 0
    @binary.split("").each_with_index { |digit, i| sum += digit.to_i * (2 ** i) }
    sum
  end
end

module BookKeeping
  VERSION = 2
end
