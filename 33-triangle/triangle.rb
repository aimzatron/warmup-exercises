class TriangleError < ArgumentError
end

class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
      if a == 0 || b == 0 || c == 0
        raise TriangleError
      elsif a < 0 || b < 0 || c < 0
        raise TriangleError
      elsif b + c <= a || a + b <= c || a + c <= b
        raise TriangleError
      else
        if a == b && c == a && b == c
          :equilateral
        elsif a != b && b != c && a != c
          :scalene
        else
          :isosceles
        end
      end
  end

end
