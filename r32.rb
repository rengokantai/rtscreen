#32 Hash default blocks

#Ex 1
word_count = {}
text = <<END
  friend me dog cat
END


text.split.map(&:downcase).each do |word|
  word_count[word] ||= 0
  word_count[word] += 1
end

puts word_count

#Ex 2

word_count = Hash.new do |hash, missing_key|
  hash[missing_key] = 0
end
text = <<END
  friend me dog cat
END


text.split.map(&:downcase).each do |word|
  word_count[word] += 1
end

puts word_count.default_proc
puts word_count.default_proc.call({}, :foo)

#Ex 3
config = Hash.new do |hash, missing_key|
  hash[missing_key] = Hash.new(&hash.default_proc)
end

config[:production]='sql'
puts config[:production]

#Ex 4
require 'open-uri'
require 'cgi'
require 'nokogiri'

temperature = Hash.new do |h, town|
  url = "http://www.google.com/ig/api?weather=" + CGI.escape(town)
  h[town] = open(url) do |body|
    Nokogiri::XML(body).at_css('current_conditions temp_f')['data']
  end
end

puts temperature['Shrewsbury, PA']