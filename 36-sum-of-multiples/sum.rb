class SumOfMultiples
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def upto(multiple, input)
    all_multiples = []

    current_multiple = multiple

    while input > current_multiple
      all_multiples.push(current_multiple)
      current_multiple += multiple
    end

    all_multiples

  end

  def total(multiples)

    total = 0
    multiples.each do |multiple|
      total += multiple 
    end

    total

  end

  def to(input)
    all_multiples = upto(a,input) + 
    upto(b,input) + upto(c,input)

    total(all_multiples.uniq)
  end

end
