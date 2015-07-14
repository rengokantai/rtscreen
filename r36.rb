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

#Ex 3
def context
  l = lambda do
    puts "In lambda"
    return
    puts "After return"
  end

  p = proc do
    puts "In proc"
    return
    puts "After return"
  end
  l.call
  p.call
end


#Ex 4
def each_call(visit)
  visit.call("a")
  visit.call("b")
  visit.call("c")
  visit.call("d")
  visit.call("e")
end

each_call(->(name) {puts "#{name}"})

#Ex 5
def each_call2(&visit)
  visit.call("a")
  visit.call("b")
  visit.call("c")
  visit.call("d")
  visit.call("e")
end

each_call2 do |name|
  puts "#{name}"
end

#Ex 6
greeter_n = ->(name){
  puts "#{name}"
}

puts greeter_n