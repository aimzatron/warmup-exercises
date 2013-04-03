class Binary

  def initialize(number)
    @number = number.split("").reverse
  end

  def to_decimal
    total = 0
      @number.each_with_index |num , n|
        total += num[n].to_i * 2 ** n
        return total
  end

end
