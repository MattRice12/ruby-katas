require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string-combo'

class StringComboTest < Minitest::Test

  def test_while
    skip
    assert_equal "d, do, dog", StringCombo.new.run("dog")
  end

  def test_with_iteration
    assert_equal "d, do, dog, o, og, g", StringCombo.new.run("dog")
  end

end
