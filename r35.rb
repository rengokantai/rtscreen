#35 Callable
#Ex 1
# class Contest
#   def initialize(options={})
#     @notifier = options.fetch(:notifier){
#       ->(user, message){
#         puts "Message to #{user} #{message}"
#       }
#     }
#   end
#
#   def choose
#     @notifier.call(winning_user, "you win")
#   end
#
#   def notify_user_by_email(user, message)
#
#   end
#
# end

#Ex 2
class Contest
  def initialize(options={})
    @notifier = options.fetch(:notifier){
      method(:notify_user_by_email)
    }
  end

  def choose
    @notifier.call(winning_user, "you win")
  end

  def notify_user_by_email(user, message)

  end

end

class User
  def send_sms(message)
    puts "Sending #{message}"
  end
end

c = Contest.new(notifier: :send_sms.to_proc)
