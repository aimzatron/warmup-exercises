require_relative './beer'
require 'minitest/autorun'

class BeerTest < MiniTest::Unit::TestCase

  def test_that_it_works_for_1
    assert_equal "99 bottles of beer on the wall, 
      99 bottles of beer, take one down, 
      pass it around, 98 bottles of beer on 
      the wall", 
  end
end
