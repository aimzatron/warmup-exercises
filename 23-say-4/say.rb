class Say

  def initialize number
    @number = number
  end

  def in_english
    if @number > 999
      thousands_raminder = @number % 1000
      
    elsif @number > 99
      hundreds_remainder = @number % 100
      hundreds = @number / 100
      remainder = hundreds_remainder % 10
      decade = hundreds_remainder - remainder
        if hundreds_remainder == 0
          nums[hundreds] + " hundred"
        elsif remainder == 0
          nums[hundreds] +  " hundred " + nums[decade]
        else
          nums[hundreds] +  " hundred " + nums[decade] + "-" + nums[remainder]
        end
      else
        nums[@number]
    end
  end

  def nums
    {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  end
end
