require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string-combo'

class StringComboTest < Minitest::Test

  def test_while
    skip
    assert_equal "d, do, dog", StringCombo.new.run("dog")
  end

  def test_with_iteration
    # skip
    assert_equal "a", StringCombo.new.run("a")

    assert_equal "d, do, dog, o, og, g", StringCombo.new.run("dog")

    assert_equal "g, gi, gig, giga, gigan, gigant, giganti, gigantic, i, ig, iga, igan, igant, iganti, igantic, g, ga, gan, gant, ganti, gantic, a, an, ant, anti, antic, n, nt, nti, ntic, t, ti, tic, i, ic, c", StringCombo.new.run("gigantic")
  end

  def test_count
    # skip
    assert StringCombo.new.run("a").split(', ').count, Algorithm.new.count("a")

    assert StringCombo.new.run("ab").split(', ').count, Algorithm.new.count("ab")

    assert StringCombo.new.run("abc").split(', ').count, Algorithm.new.count("abc")

    assert StringCombo.new.run("abcd").split(', ').count, Algorithm.new.count("abcd")

    assert StringCombo.new.run("abcde").split(', ').count, Algorithm.new.count("abcde")

    assert StringCombo.new.run("abcdef").split(', ').count, Algorithm.new.count("abcdef")

  end
end
