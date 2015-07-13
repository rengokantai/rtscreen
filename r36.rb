#36Blocka Procs, and lambda
#Ex 1
greeter = Proc.new do |name|
  puts "#{name}"
end

puts greeter

puts greeter.call("Me")

#Ex 2
greeter_p = proc do |name|
  puts "#{name}"
end

greeter_l = lambda do |name|
  puts "#{name}"
end


puts greeter_p.call("Me")
puts greeter_l.call("You")