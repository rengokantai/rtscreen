#22 Inline rescue
#Ex 1
def user_name(params)
  params.fetch(:username)
end

def greet(params)
  name=user_name(params) rescue "Anonymous"
  puts "Hello, #{name}"
end

greet({})

#Ex 2
def user_name(params)
  "#{params.fetch(:fname)} #{params.fetch(:lname)}"
end

def greet(params)
  name=user_name(params) rescue "Anonymous"
  puts "Hello, #{name}"
end

greet({fname:"f", lname:"l"})

#Ex 3
require 'English'
value_or_error ={}.fetch(:some_key) rescue $ERROR_INFO

#Ex 4, dont need English library
value_or_error ={}.fetch(:some_key) rescue $!