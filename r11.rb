class Greet
  def hello
    puts "hello"
  end
end


ins = Greet.new

mins = ins.method(:hello)  #method + symbol
mins.call

###
#ex2

#review 3:42 and after

class Tea
  attr_accessor :timer
  attr_accessor :ui
  def initialize(minutes)
    self.ui = Studio.new
    self.timer = SleepTimer.new(minutes,ui)#version1 ui.method(:notify)
    init_plugins
  end

  def init_plugins
    @plugins = []
    ::Plugins.constants.each do |name|
      @plugins << ::Plugins.const_get(name).new(self)
    end
  end

  def start
    timer.start

  end
end

SleepTimer = Struct.new(:minutes, :noti) do
  def start
    sleep minutes * 60
    # version1 noti.call("ready")
    noti.notify("ready")
  end
end

class Studio
  def notify(text)
    puts text
  end
end

module Plugins

  class Beep
    def initialize(tea_ck)
      tea_ck.ui.extend(UiBeep)
    end

    module UiBeep
      def notify(*)
        puts "Bee"
        super
      end
    end
  end
end


t = Tea.new(0.02).start
