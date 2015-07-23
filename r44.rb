#44 One?

#return true only one element is true

puts [42, nil, false].one?
puts "aaa bbb aaa".scan(/aaa/).one?
puts [42,34,5].one?{|e| e.odd?} #brace
puts [42,34,5].one?(&:odd?)# note: parentheses