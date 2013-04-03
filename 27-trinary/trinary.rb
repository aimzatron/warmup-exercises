class Trinary

  def initialize(number)
    @digits = number.reverse.split("")
  end

  def to_decimal
    total = 0
    @digits.each_with_index do |digit, index|
      total = total + digit.to_i * (3 ** index)
    end
    total
  end
end
