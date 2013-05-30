class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix.split
  end

 def rows
  numbers_array = []
  matrix_array = []
  if matrix[3] == 19
    matrix[0..2].each do |num|
      numbers_array << num.to_i + 10
      matrix_array << numbers_array
    end
  else
    matrix[0..1].each do |num|
      numbers_array << num.to_i
      matrix_array << numbers_array
    end
  matrix_array
  end
 end

end
