class Hexadecimal
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def to_decimal
    group = []
    if string.length == 1
      if string.content.include?(Numeric) == true
        string.to_i
      else
        hexadecimal[string]
      end
    else
      string.each do |alpha_num|
        if alpha_num == ["0..9"]
         group << alpha_num
        else
          group << hexadecimal[alpha_num]
        end
      end
      group.inject(:+)
    end
  end

  def hexadecimal
    {  
      "a" => 10, "b" => 11, "c" => 12, "d" =>13, 
      "e" => 14, "f" => 15 
    }  

  end

end
