class Series
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def slices(slicen_number)
    @number.each do ||
  end

  def digits
    numbers =  []
    numbers = @number.split("")
    numbers.collect do |num|
      num.to_i
    end
  end
end
