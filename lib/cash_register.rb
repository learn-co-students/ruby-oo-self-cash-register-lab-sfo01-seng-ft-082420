require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items
    

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, amount, quantity)
        self.total += amount * quantity
        quantity.times do
            items << title
        end
    end 

end


binding.pry
cash_register = CashRegister.new
cash_register.add_item("eggs", 0.98)
p cash_register.total
# cash_register_with_discount = CashRegister.new(20)