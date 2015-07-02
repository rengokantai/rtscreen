require 'fowardable'

class User

  attr_reader :account

  extend Forwardable

  def_delegators :@account, :first_name, :last_name, :email_address
  #make account private.
  def initialize(account)
    @account = account
  end



  def full_name
    "#{first_name} #{last_name}"
  end

end

Github = Struct.new(:login, :email_address, :first_name, :last_name)
Facebook = Struct.new(:uid, :email_address, :first_name, :last_name)
class Store
  extend Forwardable

  def_delegator '@owner', :email_address, :owner_email

  def initialize(owner)
    @owner=owner
  end
end

avd =User.new(Github.new("rengokantai", "email", "Hernan", "Ke"))
store = Store.new(avd)
store.owner_email