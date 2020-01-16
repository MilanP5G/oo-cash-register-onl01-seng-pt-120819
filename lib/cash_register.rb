class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items
  
  def initialize(total = 0, discount = 20)
    @total = total 
    @discount = discount
    @items = []
  end 
  
  
  def add_item(title, price, quantity = 1)
    if quantity > 1
      count = 0
      while count < quantity
        @items << title
        count += 1
      end
    else
      @items << title
    end
    @total += price * quantity
    @last_transaction_amount = @total
    @total 
  end 
  
  def apply_discount
    if @discount > 0
      @discount  = @discount/100.to_f
      @total = @total - (@total * (@discount))
      @total = @total.round(-2)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

end 