=begin
class Point
  def self.my_new(x,y)
    instance = allocate
    instance.instance_variable_set(:@x,x)
    instance.instance_variable_set(:@y,y)
  end

  def my_initialize(x,y)
    @x=x
    @y=y
  end
end
=end

#OR

class Point
  def self.my_new(*args, &block)
    instance = allocate
    instance.my_initialize(*args, &block)
    instance
  end

  def my_initialize(x,y)
    @x=x
    @y=y
  end
end

p = Point.my_new(3,5)