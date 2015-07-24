#45 Hash Default Value
#Ex 1
text = <<END
I am
END

word_count =Hash.new do |hash, missing_key|
  hash[missing_key]
end

text.split.map(&:downcase).each do |word|
  word_count[word] = 1
end

puts word_count

#Ex 2
h = Hash.new([])
h["IPAs"] << "Victory"
h["IPAs"] << "Victory2"
h["IPAs2"] << "Victory3"
h["IPAs2"] << "Victory4"



#Ex 3
default = []
h = Hash.new(default)
h["IPAs"] << "Victory"
h["IPAs"] << "Victory2"
h["IPAs2"] << "Victory3"
h["IPAs2"] << "Victory4"
puts h["IPAs2"]
#Ex 4

h = Hash.new{|h, k| h[k]=[]}
h["IPAs"] << "Victory"
h["IPAs"] << "Victory2"
h["IPAs2"] << "Victory3"
h["IPAs2"] << "Victory4"
puts h["IPAs2"]