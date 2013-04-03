class WordProblem
  attr_reader :equation

  def initialize(equation)
    @equation = equation
  end

  def answer
    calculate
  end

  def calculate
    matches = equation.scan /.* (-?\d+) (plus|minus|multiplied|divided)(?:by)? (-?\d+)/
    first, operator, second= matches.first
    op = operator_for(operator)
    (first.to_i).send(op, second.to_i)
  end

  def calculate_with_third
    if third.exists?
      matches = equation.scan /.* (-?\d+) (plus|minus|multiplied|divided)(?:by)? (-?\d+) (plus|minus|multiplied|divided)(?:by)? (-?\d+)/
      calculate, operator, third = matches.calculate
      op = operator_for(operator)
      (calculate.to_i).send(op, third.to_i)
    end
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

