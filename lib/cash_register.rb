
class CashRegister
  
  attr_accessor :discount, :total, :item, :last_transaction_amt
  
  def initialize(discount)
    
    @total = 0
    @discount = discount
    
  end
  
end