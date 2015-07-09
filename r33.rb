#33 class and constants
point =Class.new do
  attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end

circle =Class.new(point) do
  attr_reader :radius
  def initialize(x,y, radius)
    super(x,y)
    @x = radius
  end
end

point.class
p = point.new(5,7)

c= circle.new(3,4,5)

#Ex 2
point =Class.new do
  attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end

point = Class.new
puts point.name
puts point
Point = point
Point.name
puts Point
puts point.name
puts point

Location = Point
puts Location.name
Point = nil
puts point.name

