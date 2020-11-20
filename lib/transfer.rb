require 'pry'
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, status = "pending", amount)
      @sender = sender 
      @receiver = receiver
      @status = status
      @amount = amount
      binding.pry 
  end 
  

  def valid?
    # BankAccount.valid?
  
    #Transfer #valid? can check that both accounts are valid aka sender & receiver 
end
