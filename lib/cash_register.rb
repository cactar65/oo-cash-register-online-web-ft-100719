
class CashRegister
  
  attr_accessor :discount, :total, :item, :last_transaction_amt
  
  def initialize(discount=0)
    
    @total = 0
    @discount = discount
    @item = []
    
  end
  
  def add_item(title, price=0, )
    
  end
  
end