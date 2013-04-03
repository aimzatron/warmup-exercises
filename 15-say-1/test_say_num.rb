require 'minitest/autorun'
require 'minitest/pride'

class test_say_num

  def test_that_it_returns_sinlge_digits
    assert_equal 'one', Say.new(1).in_english
  end

  def test_that_it_returns_double_digits
    assert_equal 'twenty-two', Say.new(22).in_english
  end

  def test_that_it_returns_fourteen
    assert_equal 'fourteen', Say.new(14).in_english
  end

  def test_that_it_returns_zero
    assert_equal 'zero', Say.new(0).in_english
  end

  def test_that_it_returns_negative_numbers
    assert_equal 'fifty-six', Say.new(56).in_english
  end

  def test_that_it_returns_three_digits
    assert_equal 'one hundred', Say.new(100).in_english
  end
end
