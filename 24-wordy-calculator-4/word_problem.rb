class WordProblem

  def initialize(question)
    @question = question
  end

  def answer
    numbers = @question.split
    operators = @question.scan /plus|minus|multiplied|divided/
    operator = operator.split("")
    result =  numbers.collect do |item|
        item.to_i
      end
    a = result[2]
    b = result[4]

      # if operator == "plus"
      #     operator = :+
      # elsif operator == "minus"
      #     operator = :-
      # elsif operator == "multiplied"
      #     operator = :*
      # else 
      #     operator = :/
      # end

      # a.send(operator, b)
  end
end
