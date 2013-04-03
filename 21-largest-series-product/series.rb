class Series

  def initialize(number)
    @number = number
  end

  def digits
    numbers = @number.split("")
    numbers.collect{|n| n.to_i}
  end

  def slices(number)
    if number == 2
      sliced = []
      digits.each_with_index do |digit,index|
        break if index == digits.length - 1
        sliced << [digit, digits[index + 1]]
        end
        sliced
    else
      sliced_again = []
      digits.each_with_index do |digit,index|
        break if index == digits.length - 2

        sliced = [digit]
        sliced << digits[index + 1]
        sliced << digits[index + 2]
        sliced_again << sliced

        end
        sliced_again
    end
  end

  def largest_product
    sliced = @digits.join("")
  end
end


 # expected = [[0, 1], [1, 2], [2, 3], [3, 4]]
 # series = Series.new("01234")
