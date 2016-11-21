class Prime
  def self.nth(n)
    raise ArgumentError, 'Invalid Input' if n == 0
    prime_arr = []
    x = 2
    while prime_arr.length < n
      prime_arr << x if is_prime?(x)
      x += 1
    end
    prime_arr.last
  end

  def self.is_prime?(x)
    return false if x < 2
    j = Math.sqrt(x)
    2.upto(j) { |n| return false if (x % n) == 0 }
    true
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
