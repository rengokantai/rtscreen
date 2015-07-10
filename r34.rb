#34 Struct from hash
#Ex1
Bee = Struct.new(:a, :b, :c, :d) do
  def self.from_hash(attributes)
    instance = self.new
    attributes.each do |key, value|
      instance[key] =value
    end
    instance
  end
end

bee = Bee.from_hash(
             a:"a",
             b:"b",
             c:"c",
             d:"d"
)
puts bee

#Ex2
Bee = Struct.new(:a, :b, :c, :d) do
  def self.from_hash(attributes)
    instance = self.new
    attributes.each do |key, value|
      instance[key] =value
    end
    instance
  end

  def attributes
    result = {}
    members.each do |name|
      result[name]=self[name]
    end
  end
end

bee = Bee.from_hash(
    a:"a",
    b:"b",
    c:"c",
    d:"d"
)
puts bee