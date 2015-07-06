#Pluggable selector
#Ex1
SleepTimer = Struct.new(:minutes, :notifier, :notify) do
  def start
    sleep minutes * 60
    notifier.send(notify, "ready")
  end
end


#SleepTimer.new(minutes, ui)
timer=SleepTimer.new(0.1, $stdout, :puts)
timer.start


#Ex2

Product = Struct.new(:short_name, :long_name)

products=[
    Product.new("short1","long1"),
    Product.new("short2","long2"),
    Product.new("short3","long3")
]

ProductListPresenter = Struct.new(:products, :show_message) do
  def render
    "".tap do |s|
      s << "<ul class='product_list'>\n"
      products.each do |product|
        s << "<li>#{product.public_send(show_message)}</li>\n"
      end
      s<< "</ul>\n"
    end
  end
end

puts ProductListPresenter.new(products, :short_name).render