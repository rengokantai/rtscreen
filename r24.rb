#24 Incidental change
#Ex 1
require 'ostruct'

user = OpenStruct.new(:qualifies_for_free_sandwich? => true)

def receipt_message(user)
  message = if user.qualifies_for_free_sandwich?
    "a"
  else
    "b"
  end
  if rand(10) == 0
    message << "10% discount"
  end
  message
end

puts receipt_message(user)

#Ex 2
def slugify(title)
  title
    .strip
    .downcase
    .tr_s('^A-Za-z0-9', '-')

end