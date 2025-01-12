
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
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @item
  end
  
  def void_last_transaction
    
    @total -= @last_transaction_amt
    
  end
  
end