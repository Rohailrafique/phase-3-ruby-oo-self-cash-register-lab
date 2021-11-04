require "pry"

class CashRegister
attr_accessor :total, :discount, :items, :void_last_transaction

    def initialize(discount=0) 
       
        @total = 0
       @discount = discount
       @items=[]
    end

    def add_item(item, price, quantity=1)
        @total += price * quantity
        quantity.times {self.items << item}
        binding.pry
    end

    def apply_discount 
        @total = @total - (@total * @discount/100)
         if @discount > 0
        "After the discount, the total comes to $#{@total}."
         else
            "There is no discount to apply."
         end
    end

end

puts register1= CashRegister.new(20)
puts register1.discount