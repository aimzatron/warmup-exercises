class Series

  def initialize(digit)
    @digits = digit
  end

  def digits
    @digits.split("").collect{ |digit| digit.to_i }
  end

  def slices(slice_size)
    slices = []
    digits.each_index do |index|
      slice = digits[index...index + slice_size]
      if slice.count == slice_size
        slices << slice
      end
    end
    slices
  end

  def largest_product(series_size)
    raise ArgumentError if @digits.size < series_size
    products = slices(series_size).collect do |group|
      group.inject(:*)
    end
    products.max
  end
end
