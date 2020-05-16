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

        if sender.balance < @amount || !sender.valid? || !receiver.valid?
           @status = "rejected"
           return "Transaction rejected. Please check your account balance."

        end
        sender.balance = sender.balance - @amount
    receiver.balance = @amount + receiver.balance
    @amount = 0
    @status = "complete"


  end

  def reverse_transfer
    binding.pry
    sender.balance = @amount + sender.balance
    receiver.balance = receiver.balance - @amount
  end
end
