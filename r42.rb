#42 Streaming
require 'csv'

def memstats
  size = `ps -o size= #{$$}`.strip.to_i
end
#Ex 1
put memstats
visitors = CSV.read('x.csv', headers:true)
visitors.count{|v|v['Geolocation'] = ~ /San/}
put memstats

#Ex 2
put memstats
count = 0
CSV.foreach('visitor.csv',headers:true) do |v|
  count += 1 if v['Geolocation'] = ~ /San/
end
put memstats

#Ex 3
put memstats
count = 0
CSV.foreach('visitor.csv',headers:true) do |csv|
  visitors = csv.each
  visitors.count{|v| v['Geolocation'] = ~ /San/}
end
put memstats