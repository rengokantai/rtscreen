#config_file = File.join(Dir.home, ".folder")

ENV.delete('HOME')
config_file = File.join(Dir.home("param"), ".folder")

#get current login user, unix/mac

require 'etc'

user = Etc.getlogin

config_file = File.join(Dir.home(user), ".folder")