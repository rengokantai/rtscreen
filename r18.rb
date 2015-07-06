#Subclassing array
#Ex 1
class TagList < Array
  def << (tag)
    tag.to_s.strip.split.each do |t|
      super(t)
    end
    self
  end

  def to_s
    join(" ")
  end
end

tags = TagList.new
tags << "foo" << "bar" << "baz"
tags.to_s
tags.grep(/b/)

tl1= TagList.new(%w[apple banana])
tl2= TagList.new(%w[pear paech])
tl3 =tl1+tl2
tl3.to_s

tl3.class

#Ex 2

class TagList
  include Enumerable

  def initialize(*args)
    @list = Array.new(*args)
  end

  def << (tag)
    tag.to_s.strip.split.each do |t|
      super(t)
    end
    self
  end

  def to_s
    join(" ")
  end

  def +(other)
    TagList.new(list + other.list)
  end

  def each(*args, &block)
    list.each(*args, &block)
  end

  protected

  attr_reader :list
end

tags = TagList.new
tags << "foo" << "bar" << "baz"
tags.to_s
tags.grep(/b/)

tl1= TagList.new(%w[apple banana])
tl2= TagList.new(%w[pear paech])
tl3 =tl1+tl2
tl3.to_s

tl3.class

tl3.map(&:reverse)
tl3.group_by(&:size)
