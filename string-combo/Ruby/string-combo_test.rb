require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string-combo'

class StringComboTest < Minitest::Test

  def test_blank
    assert_equal "d, do, dog", StringCombo.new.run("dog")
  end

end
