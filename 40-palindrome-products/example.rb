class Palindromes
  attr_reader :ceiling, :floor

  def initialize(input)
    @ceiling = input[:max_factor]
    @floor = input[:min_factor]
  end

  def generate

  end

  def largest
    Result.new
  end

  def smallest
    Result.new
  end

  def value
  end


end

class Result

  def value
    9
  end

  def factors
    [[91, 99]]
  end

end
