 class Say3
 attr_reader :number

  def initialize(number)
    @number = number
  end

  def split
    raise ArgumentError 'Not in range!' unless number < 999999999999
    [billions, millions, thousands, hundreds]
  end

  def a_billion
    10 ** 9
  end

  def a_million
    10 ** 6
  end

  def billions
    if number >= a_billion
      number / a_billion
    end
  end

  def millions
    if number >= a_million
      (number % a_billion) / a_million
    end
  end

  def thousands
    if number > 999
      remainder = (number % a_million)
      remainder / 1000
    end
  end

  def hundreds
    (number % a_million) % 1000
  end
end
