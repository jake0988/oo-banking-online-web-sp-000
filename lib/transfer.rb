require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    # binding.pry
    if sender.valid? && receiver.valid?
      return true
    else
      false
    end
  end

  def execute_transaction

        if sender.balance < @amount || !sender.valid?
          binding.pry
           "Transaction rejected. Please check your account balance."
           return
        end
        sender.balance = sender.balance - @amount
        if sender.balance < 0
         "Transaction rejected. Please check your account balance."
       end
    receiver.balance = @amount + receiver.balance
    @amount = 0
    if sender.balance < 0
    @status = "complete"


  end
end
