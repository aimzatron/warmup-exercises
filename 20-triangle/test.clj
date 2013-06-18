(load-file "triangle.clj")
(assert (= :equilateral (triangle 2 2 2)))
(assert (= :equilateral (triangle 10 10 10)))
(assert (= :isosceles (triangle 3 4 4)))
(assert (= :isosceles (triangle 4 3 4)))
(assert (= :scalene (triangle 3 4 5)))
(assert (= :illogical (triangle 1 1 50)))
(assert (= :illogical (triangle 1 2 1)))
