class WordProblem
  attr_reader :question, :words, :a, :b, :c, :d, :e, :f

  def initialize(question)
    @question = question
    @words = question.split
    @a = words[2].to_i
    @b = words[4].to_i
    @c = words[5].to_i
    @d = words[6].to_i
    @e = words[8].to_i
    @f = words[7].to_i
  end

  def interpret_question
    if words[0] == "Who"
      raise ArgumentError
    elsif words[3] == "cubed?"
      raise ArgumentError
    else
      if words.count < 7
        if words[3] == "plus"
          a + b 
        elsif words[3] == "minus"
          a + b.abs
        elsif words[3] == "multiplied"
          a * c
        else
          a / c
        end
      else
        if words[3] == "plus" && words[5] == "plus"
          a + b + d
        elsif words[3] == "plus" && words[5] == "minus"
          a + b - d
        elsif words[3] == "multiplied" && words[6] == "multiplied"
          a * c * e
        elsif words[3] == "plus" && words[5] == "multiplied" 
          g = a + b
          g * f
        else words[3] == "divided" && words[6] == "divided"
          a / c / e
        end
      end
    end
  end

  def answer
    interpret_question
  end
end
