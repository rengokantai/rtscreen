#super exercise


#Exercise 1
class Parent
  def hello(subject="world")
    puts "Hello, #{subject}"
  end
end


class Child < Parent
  def hello(subject)
    super(subject)
    puts "today?"
  end
end

Child.new.hello("Hi")

#Exercise 2
class Parent
  def hello(subject="world")
    puts "Hello, #{subject}"
  end
end


class Child < Parent
  def hello(subject = :default)
    if subject == :default
      super
    else
      super(subject)
    end
    puts "today?"
  end
end

Child.new.hello(:default)


#Exercise 3
class Parent
  def hello(subject="world")
    puts "Hello, #{subject}"
    if block_given?
      yield
      puts "nice!"
    end
  end
end


class Child < Parent
  def hello(subject = :default)
    if subject == :default
      super
    else
      super(subject)
    end
    puts "today?"
  end
end

Child.new.hello(:default) do
  puts "Hi there"
end


#Exercise 4
class Parent
  def hello(subject="world")
    puts "Hello, #{subject}"
    if block_given?
      yield
      puts "nice!"
    end
  end
end


class Child < Parent
  def hello(subject = :default)
    if subject == :default
      super(&nil)
    else
      super(subject, &nil)
    end
    puts "today?"
  end
end

Child.new.hello(:default) do
  puts "Hi there"
end
