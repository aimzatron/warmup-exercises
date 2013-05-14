
class Grains
  attr_reader :num

  def square(num)
    @num = num
    first_num = 0
    numbers = []

    numbers << @num

    to_be_squared = 
      numbers.each |do| number, first_num
                  first_num * number * 2          
      end
    
    answer = Math.sqrt(to_be_squared)

    answer
  end




end
1+1


