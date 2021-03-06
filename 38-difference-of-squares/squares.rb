class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sums
    (1..num).inject(:+) ** 2
  end

  def sum_of_squares
    squares = (1..num).collect{|i| i**2}
    squares.inject(:+)
  end

  def difference
    (sum_of_squares - square_of_sums).abs
  end

end
