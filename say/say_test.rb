require './say'
require 'minitest/autorun'
require 'minitest/pride'

class SayTest < MiniTest::Unit::TestCase

  def test_that_it_returns_zero
    assert_equal 'zero', Say.new(0).in_english
  end

  def test_that_returns_8
    assert_equal "eight", Say.new(8).in_english
  end

  def test_that_it_returns_14
    assert_equal "fourteen", Say.new(14).in_english
  end

  def test_that_it_returns_50
    assert_equal "fifty", Say.new(50).in_english
  end

  def test_that_it_returns_51
    assert_equal "fifty-one", Say.new(51).in_english
  end

  def test_that_it_returns_argument_error_over_99
    assert_raises ArgumentError do
     Say.new(101).in_english
  end
 end

 def test_that_it_returns_argument_error_under_0
    assert_raises ArgumentError do
     Say.new(-10).in_english
  end
 end

end
