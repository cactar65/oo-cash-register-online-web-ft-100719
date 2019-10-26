
class CashRegister
  
  attr_accessor :discount, :total, :item, :last_transaction_amt
  
  def initialize(discount=0)
    
    @total = 0
    @discount = discount
    @item = []
    
  end
  
  def add_item(title, price, quantity=1)
    @total =+ (price * quantity)
    quantity.times{@total << }
    
  end
  
end