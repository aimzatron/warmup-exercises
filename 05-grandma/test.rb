require 'minitest/autorun'
require 'minitest/emoji'
require_relative './grandma'

class GrandmaTest < MiniTest::Unit::TestCase

  def test_that_grandma_cannot_hear_unless_shouting
    assert_equal @grandma.speak_up, @grandma.response("yo grams") 
  end
end
