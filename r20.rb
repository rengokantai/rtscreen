#20 Struct
#Ex 1 (redundant)
class Point
  attr_accessor :x
  attr_accessor :y
  def initialize(x=nil, y=nil)
    @x = x
    @y = y
  end
end

#Ex 2
point = Struct.new(:x, :y)

Point = point
Point.new(23)
p.x
p.x=7
p[:x]
p["y"]
p.max
p.reduce(&:+)

Point = Struct.new(:x, :y) do
  def to_s
    "(#{x}X#{y})"
  end
end

p = Point.new(5,3)
p.to_s