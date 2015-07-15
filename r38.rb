require 'ostruct'
require 'open-uri'
require 'json'


class TemperatureApiError < StandardError

end

def get_temp(query)
  key= ENV['KEY']
  url = ""
  data = open(url).read
  JSON..parse(data)[][]
rescue => error
  raise TemperatureApiError, error.message
end