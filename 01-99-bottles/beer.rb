class Bottle
  attr_reader :number

  def initialize(number)
    @number = number
  end

end

module Wall
  def self.bottle(number)
    "#{number} bottles of beer on the wall, 
      #{number} bottles of beer, take one down, 
      pass it around, #{number - 1} bottles of beer on 
      the wall"
  end
end





