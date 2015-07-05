#super in modules

#Ex1

module Y
  def hello(subject="World")
    if defined?(super)
      puts super
    else
      puts "Hi , #{subject}"
    end
    puts "Well"
  end
end

class Greet

#  include Logged
  def hello(subject)
    puts "Good , #{subject}"
  end
end

class Subgreet < Greet
  include Y
end

class NonGreet
  include Y
end

Subgreet.new.hello("B")
NonGreet.new.hello("C")

=begin
module Logged
  def logger_send(name, *args, &block)
    original_send = Object.instance_method(:send)
    bound_send = original_send.bind(self)
    puts "Sending #{name}(#{args.map(&:inspect.join(','))}"
    bound_send.call(name, *args, &block)
  end
end

Greet.new.logged_send(:hello, "Major")
=end
