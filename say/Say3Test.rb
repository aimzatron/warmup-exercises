require 'minitest/autorun'
require 'minitest/emoji'
require './say3'

class Say3Test < MiniTest::Unit::TestCase

  def test_zero
    assert_equal [nil, nil, nil, 0], Say3.new(0).split
  end

  def test_hundreds
    assert_equal [nil, nil, nil, 123], Say3.new(123).split
  end

  def test_other_hundreds
    assert_equal [nil, nil, nil, 987], Say3.new(987).split
  end

  def test_one_thousand
    assert_equal [nil, nil, 1, 0], Say3.new(1000).split
  end

  def test_other_thousands
    assert_equal [nil, nil, 9, 843], Say3.new(9843).split
  end

  def test_one_million
    assert_equal [nil, 1, 0, 0], Say3.new(1000000).split
  end

  def test_other_million
    assert_equal [nil, 30, 0, 0], Say3.new(30000000).split    
  end

  def test_one_billion
    assert_equal [ 1, 0, 0, 0], Say3.new(1000000000).split
  end

  def test_other_billions
    assert_equal [ 7, 0, 0, 0], Say3.new(7000000000).split
  end
end

