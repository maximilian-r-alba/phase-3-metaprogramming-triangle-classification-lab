class Triangle
  attr_accessor :a , :b , :c 
  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if greater_than_0 || !triangle_inequality_rule
      raise TriangleError 
    else
      case [@a, @b, @c].uniq.count
      when 1 
        :equilateral
      when 2
        :isosceles
      when 3 
        :scalene
      end
    end
  end

  def greater_than_0
    ![@a , @b , @c].all?{|num| num.positive?}
  end

  def triangle_inequality_rule
    @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  class TriangleError < StandardError
  end

end


