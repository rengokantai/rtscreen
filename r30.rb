#Ex 30
alias old_backtick `
def `(command)
  puts "Executing command:#{command}"
  old_backtick(command)
end

#%x{uname -a}

require 'net/http'
require 'cgi'

class Co
  def `url
    URI.parse(url)
  end

  def say(mes)
    mes = CGI.escape(mes)
    Net::HTTP.get_print(`http://www.cowsays.com/cowsay?message=#{mes}`)
  end
end

Co.new.say "Hello"