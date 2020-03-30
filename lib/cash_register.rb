require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    # binding.pry
<<<<<<< HEAD
    if discount != 0
      self.total = total - (total * discount / 100)
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = total - last_transaction
=======
    if @discount != 0
      @total = @total - (@total * @discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
    end
>>>>>>> 6eba966db982c971ab1928b65d2adc51abce0c71
  end
end
