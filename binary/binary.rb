class Binary
  def initialize(binary)
    raise ArgumentError, "Binary inputs only ('1' or '0')" if binary =~ /[^01]/
    @binary = binary
  end

  def to_decimal
    @binary.chars.reverse.each_with_index.reduce(0) do |sum, (digit, i)|
      case digit
      when '1' then sum + (2 ** i)
      when '0' then sum
      end
    end
  end
end

module BookKeeping
  VERSION = 2
end
