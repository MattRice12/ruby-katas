require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fizzbuzz'


class FizzbuzzTest < Minitest::Test

  def test_fizzbuzz
    assert_equal "fizzbuzz", Fizzbuzz.new.run(16)
  end
  #
  # def test_buzz
  #   assert_equal "buzz", Fizzbuzz.new.run(5..5)
  #   assert_equal "buzz", Fizzbuzz.new.run(10..10)
  #   assert_equal "buzz", Fizzbuzz.new.run(95..95)
  # end
  #
  # def test_fizz
  #   assert_equal "fizz", Fizzbuzz.new.run(3..3)
  #   assert_equal "fizz", Fizzbuzz.new.run(33..33)
  #   assert_equal "fizz", Fizzbuzz.new.run(99..99)
  # end
  #
  # def test_else
  #   assert_equal 47, Fizzbuzz.new.run(47..47)
  # end
  #
  # def test_range
  #   assert_equal ["buzz", 34, "fizz", 32, 31, "fizzbuzz"], Fizzbuzz.new.run(30..35).flatten
  #
  # end
end
