class Triangle

  attr_reader :a, :b, :c



  def initialize( a, b, c)
    @a = a
    @b = b
    @c = c
end   

def kind
  validate_triangle
  if a == b && b == c
    :equilateral
  elsif a == b ||  a == c || c == b
     :isosceles
 else
  :scalene
 end
 end

 
def sides_greater_then_zero?
  [a, b, c].all?(&:positive?)
end

def valid_inequality?
  a + b > c && a + c > b && b + c > a
end

def validate_triangle
  raise TriangleError unless sides_greater_then_zero? && valid_inequality?
end



class TriangleError < StandardError
  end

end