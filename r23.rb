require 'yaml'
require 'erb'
require 'tempfile'

def publish_book(book_data)
  puts "#{book_data.bytesize}"
end

metadata =YAML.load_file('')
title = metadata[:title]
description = metadata[:description]

template = ERB.new(<<EOF)
  <dc:title><%= title %></dc:title>
  <dc:description><%= description %></dc:description>
EOF

epud_data = template.result(binding)

Tempfile.open('epub_metadata') do |meta|
  #Debug text
  puts "#{meta.path}"
  meta.write(epud_data)
  meta.close
  args = %W[-S --epub-metadata=#{meta.path} -o bppk.epub ch1.md]
  system('pandoc', *args)
end

#Ex 2


Tempfile.open('epub') do |epub|
  epub.close
  Tempfile.open('epub_metadata') do |meta|
    #Debug text
    puts "#{meta.path}"
    meta.write(epud_data)
    meta.close
    args = %W[-S --epub-metadata=#{meta.path} -o #{bppk.epub} #{epub.path} ch1.md]
    system('pandoc', *args)
  end
  epub.open
  epub.data =epub.read
  publish_book(epud_data)
end
