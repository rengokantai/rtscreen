#37 Proc and Threequal
#Ex 1
puts /\A\d+\z/ === "54321"
puts (0..10) === 5
puts Numeric === 123

#Ex 2
case obj
  when /\A\d+\z/
    puts "Numeric string"
  when 0..10
    puts "Positive"
end

#Ex 3
even = ->(x){ (x % 2 == 0)}
puts even.call(2)
puts even.call(3)

even === 2
even === 3