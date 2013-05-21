class Luhn
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def check_digit
    split_number = number.to_s.split('')
    split_number.last.to_i
  end

  def addends
    results = []
    prepped_num = number.to_s.reverse.split('')
    prepped_num.each_with_index do |num, index|
      if index.odd? == true
        if num.to_i * 2 > 10
          results << num.to_i * 2 - 9
        else
          results << num.to_i * 2
        end
      else
        results << num.to_i
      end
    end
    final_result = results.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number_to_change)
    formula = number_to_change.to_i * 10
    if number_to_change.to_s.length == 6
      formula + 7
    elsif number_to_change.to_s.length > 7
      formula + 4
    else
      formula
    end

  end

end
