
class CashRegister
  
  attr_accessor :discount, :total, :item, :last_transaction_amt
  
  def initialize(discount=0)
    
    @total=0
    @discount = discount
    @item = []
    
  end
  
  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    quantity.times{@item << title}
    @last_transaction_amt = (price*quantity)
  end
  
  def apply_discount
    if @discount != 0
      @total = @total - (@total * (@discount/100.00))
  end
  
end