#42 Streaming
require 'csv'

def memstats
  size = `ps -o size= #{$$}`.strip.to_i
end

visitors = CSV.read('x.csv', headers:true)