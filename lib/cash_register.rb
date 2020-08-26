require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, amount, quantity=1)
        self.total += amount * quantity
        quantity.times do
            items << title
        end
        self.last_transaction = amount * quantity
    end 

    def apply_discount
        if discount != 0
            self.total = (total * (100 - discount.to_f)/100).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
end


# binding.pry
cash_register = CashRegister.new
cash_register.add_item("eggs", 0.98)
p cash_register.total
# cash_register_with_discount = CashRegister.new(20)