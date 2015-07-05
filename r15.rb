#Advanced fetch
#Ex1
port = ENV.fetch('PORT'){8080}.to_i
port   # 8080

config1 = {
    database:{
      type:'mysql',
      host:'localhost'
  }
}
config2={}

config2.fetch(:database){{}}.fetch(:type){'sqlite'}

#Ex 3
default = ->(key) do
  puts "#{} not found"
end

h={}
name = h.fetch(:name, &default)
email = h.fetch(:email, &default)

#Ex4

def default
  42
end

answer ={}
answer.fetch("what ", default)  # 42

