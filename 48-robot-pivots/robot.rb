class Robot
  attr_accessor :bearing

  def orient(direction)
    @bearing = direction
    raise ArgumentError if bearing != :north && bearing != :east && bearing != :south && bearing != :west
  end

  def bearing_array
    [:north, :east, :south, :west]
  end

  def turn_left
    current_bearing_index = bearing_array.index(bearing)
      next_bearing_index = current_bearing_index - 1
      next_bearing = bearing_array[next_bearing_index]
      @bearing = next_bearing
  end

  def turn_right
    if bearing == :west
      @bearing = :north
    else
      current_bearing_index = bearing_array.index(bearing)
      next_bearing_index = current_bearing_index + 1 
      next_bearing = bearing_array[next_bearing_index]
      @bearing = next_bearing
    end
  end
end
