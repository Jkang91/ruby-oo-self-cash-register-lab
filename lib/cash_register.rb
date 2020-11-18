require 'pry'
class CashRegister
    attr_accessor :total, :discount, :item, :price

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @item = []
    end

    def add_item(item, price, quantity = 1)
        @quantity = quantity
        @price = price
        self.total += price * quantity
        if quantity > 1 
            counter = 0 
            while counter < quantity 
                @item << item 
                counter += 1 
            end 
        else 
            @item << item 
        end 
    end

    def apply_discount
        if @discount > 0
            self.total -= (@price * @discount)/100
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        self.item 
    end

    def void_last_transaction
        @total -= (@price * @quantity)
    end
end

