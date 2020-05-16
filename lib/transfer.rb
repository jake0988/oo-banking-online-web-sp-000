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
        binding.pry
    receiver.balance = @amount + receiver.balance

  end
end
