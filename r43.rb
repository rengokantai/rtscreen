#43 Exclusive or

def replace_var(text, var_name, value =nil)
  unless block_given? ^ value
    raise ArgumentError,"Error"

  end
  text.gsub(/\{#{var_name}\}/){value||yield}
end

text = "my {noun} is full of {noun} s"

result = replace_var(text, 'noun'){
  %w[apple bear peach orange].sample
}

puts result