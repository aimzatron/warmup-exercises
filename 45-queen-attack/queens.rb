class Queens
  attr_reader :positions

  def initialize(positions={})
    @positions = positions
    raise ArgumentError if white == black

  end

  BOARD = Array.new(8) {Array.new(8) {0}}

  def white
    positions[:white] || [0,3]
  end

  def black
    positions[:black] || [7,3]
  end

end
