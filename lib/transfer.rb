class Transfer
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @amount = amount
  end
end
