def programme; "Global"; end

module DisOrg
  def version; "Module var"; end
end

class Coffee
  def service_inquery
    "Order coffee"
  end
end

class Obse
  include DisOrg

  attr_reader :designation
  attr_accessor :special_feature

  def initialize(designation)
    @designation = designation
  end

  def salutation; "Salute!"; end

  def service_inquiry
    special_feature.service_inquiry
  end


  def greet(title, first_name, last_name)
    full_name = "#{first_name} #{last_name}"
    service_inquiry ="coffee"
    puts "#{salutation}, #{title}, #{full_name}"
    puts "#{programme} #{version}"
    puts "#{designation} #{service_inquiry}"
  end
end

imp = Obse.new("design")
imp.special_feature =Coffee.new
imp.greet "title", "h", "ke"