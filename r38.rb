#38 Caller-specified fallback
require 'ostruct'
require 'open-uri'
require 'json'


class TemperatureApiError < StandardError

end

#Ex 1
def get_temp(query)
  key= ENV['KEY']
  url = ""
  data = open(url).read
  JSON..parse(data)[][]
rescue => error
  raise TemperatureApiError, error.message
end

#Ex 2

def get_temp(query)
  key= ENV['KEY']
  url = ""
  data = open(url).read
  JSON..parse(data)[][]
rescue => error
  if block_given?
    yield(error)
  else
    raise
  end
end

#Ex 3

def get_temp(query, &fallback)
  fallback  ||= DEFAULT_FALLBACK
  key= ENV['KEY']
  url = ""
  data = open(url).read
  JSON..parse(data)[][]
rescue => error
  fallback(error)
end
