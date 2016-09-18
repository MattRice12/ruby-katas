require 'minitest/autorun'
require 'minitest/pride'
require_relative 'coin-changer'


class CoinChangerTest < Minitest::Test

  def test_quarter
    assert_equal "25", CoinChanger.new.calculate(25)
    assert_equal "25, 25", CoinChanger.new.calculate(50)
    assert_equal "25, 25, 25", CoinChanger.new.calculate(75)
  end

  def test_dimes
    assert_equal "10", CoinChanger.new.calculate(10)
  end

  def test_dimes_and_quarters
    assert_equal "25, 10", CoinChanger.new.calculate(35)
    assert_equal "25, 25, 10", CoinChanger.new.calculate(60)
  end

  def test_nickels
    assert_equal "5", CoinChanger.new.calculate(5)
  end

  def test_nickels_and_dimes
    assert_equal "10, 5", CoinChanger.new.calculate(15)
  end

  def test_nickels_dimes_quarters
    assert_equal "25, 10, 5", CoinChanger.new.calculate(40)
    assert_equal "25, 25, 10, 5", CoinChanger.new.calculate(65)
  end

  def test_pennies
    assert_equal "1", CoinChanger.new.calculate(1)
    assert_equal "1, 1, 1", CoinChanger.new.calculate(3)
  end

  def test_all
    assert_equal "25, 25, 10, 5, 1, 1", CoinChanger.new.calculate(67)
    assert_equal "25, 25, 25, 10, 10, 1, 1, 1, 1", CoinChanger.new.calculate(99)
  end
end
