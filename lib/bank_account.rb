
require 'pry'
class BankAccount
attr_reader :name, :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    @balance = @balance + money
    binding.pry
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @status = "open" && @balance > 0
      true
    end
    false
  end

  def close_account
    @status = "closed"
  end
end
