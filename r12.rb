auth ={
    'uid' => 123,
    'info' =>{

    }
}


auth['info'].fetch('email') do
  raise "Invalid"
end

auth['info'].fetch('email')

# ex2
require 'logger'

class NullLogger
  def method_missing(*); end
end

options = {logger: false}    # Dont put space after logger!
#logger = options[:logger]|| Logger.new($stdout)
logger = options.fetch(:logger) {Logger.new($stdout)}
unless logger
  logger = NullLogger.new
end
logger

{}.fetch{:foo}||:default    # =>default
{foo:nil}.fetch{:foo}||:default    # =>nil
{foo: false}.fetch{:foo}||:default    # =>false
