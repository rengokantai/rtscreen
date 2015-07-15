#37 Proc and Threequal
#Ex 1
puts /\A\d+\z/ === "54321"
puts (0..10) === 5
puts Numeric === 123

#Ex 2
=begin
obj = /\A\d+\z/

case obj
when /\A\d+\z/
  puts "Numeric string"
when 0..10
  puts "Positive"
end
=end

#Ex 3
even = ->(x){ (x % 2 == 0)}
puts even.call(2)
puts even.call(3)

puts even === 2
puts even === 3

#Ex 4
require 'net/http'
SUCCESS = -> (response){(200..299) === response.code.to_i}
ERROR = -> (response){(400..499) === response.code.to_i}

response = Net::HTTP.get_response(URI.parse("http://www.google.com"))
case response
when SUCCESS then puts "success"
when ERROR then puts "error"
else puts "OTHER"
end