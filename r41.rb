#41 String scan


#Ex 1
text = <<END
text....................ddd@sss.com
END

EMAIL_PATTERN = /\S+@\S+/i

addresses = []
while(match = EMAIL_PATTERN.match(text))
  addresses << match[0]
  text = match.post_match
end

puts addresses
#Ex 2
text = <<END
text....................ddd@sss.com
END
addresses = text.scan(EMAIL_PATTERN)

puts addresses

#Ex 3

text.scan(EMAIL_PATTERN) do |address|
  puts address
end


#Ex 4
EMAIL_PATTERN = /(\S+)@(\S+)/i  #pattern matching
text.scan(EMAIL_PATTERN) do |address, host|
  puts "#{address}, #{host}"
end