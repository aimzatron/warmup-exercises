class WordProblem
  attr_reader :equation

  def initialize(equation)
    @equation = equation
  end

  def answer
    calculate
  end

  def calculate
    matches = equation.scan /.* (-?\d+) (plus|minus|multiplied|divided)(?:by)? (-?\d+) (plus|minus|multiplied|divided)(?:by)? (-?\d+)/
    first, operator, second, operator, third = matches.first
    op = operator_for(operator)
    (first.to_i).send(op, second.to_i)
    (op, second.to_a).send(op, third.to_i)
  end

  def operator_for(input)
    if input == "plus"
      :+
    elsif input == "divided"
      :/
    elsif input == "multiplied"
      :*
    elsif input == "minus"
      :-

    else
      Error
    end
  end
end

