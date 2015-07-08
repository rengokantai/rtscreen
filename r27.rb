#27 Macros and modules
module Eventful
  def self.included(other)
    other.extend(Macros)
  end

  def add_listener(listener)
    (@listener ||=[])<<listener
  end



  def notify_listeners(event, *args)
    (@listeners ||[]).each do |listener|
      listener.public_send("on_#{event}", *args)
    end
  end

  module Macros
    def event(name)
      module_eval(
          def #
      )
    end
  end


Class Dr
  include Eventful
  event :new_contact
end


dra = Dr.new
