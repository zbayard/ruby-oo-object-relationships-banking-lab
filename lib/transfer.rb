require 'pry'
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, status = "pending", amount)
      @sender = sender 
      @receiver = receiver
      @status = status
      @amount = amount
      #binding.pry 
  end 
  

  def valid?

    if (sender.valid? == true && receiver.valid? == true) && (sender.balance > 0 && sender.status == "open" && receiver.balance > 0 && receiver.status == "open")
      return true
    end
    
  end 

  def execute_transaction
    #binding.pry
      if Transfer.new(sender,receiver,amount).valid? && sender.balance > amount && self.status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"
      else
        self.status = "rejected"
        return "Transaction rejected. Please check your account balance."

      end
  end 
  
  
  def reverse_transfer 
    if valid? && receiver.balance > amount && self.status == "complete"
    
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    #   binding.pry
    end
  end

  
end
