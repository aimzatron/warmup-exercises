

  def triangle(a, b, c)
    if a == b && b == c
      :equilateral
    elsif a == b && b != c || a != c && b == c || a != b && a == c
      :isosceles
    elsif a != b && b != c
      :scalene
    else
      raise TriangleError if a + b + c == 0
    end
  end

  class TriangleError < Exception; end

