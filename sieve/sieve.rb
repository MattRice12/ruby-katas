class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    non_prime = []
    prime = []
    2.upto(@n).each do |num|
      unless non_prime.include?(num)
        prime << num
        non_prime << num.upto(@n).each { |x| non_prime << x if x % num == 0 }
      end
    end
    prime
  end
end
