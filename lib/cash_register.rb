require 'pry'

class CashRegister

    attr_accessor :total, :discount, :add_item, :apply_discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        @title = title 
        self.total += price * quantity
    end

    def apply_discount
        if discount != 0
            self.total = total - total * discount / 100.00
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
       arr = []
       arr << @title 
    end 



end
# binding.pry 
