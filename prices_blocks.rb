def total(prices)
	amount = 0
	prices.each{|param| amount += param}
	amount
end

def refund(prices)
	amount = 0
	prices.each{|param| amount -= param}
	amount
end

def show_discounts(prices)
	prices.each do |param|
		amount_off = param/3.0
		puts format("Your discount: $%.2f", amount_off)
	end
end


prices = [3.99, 25.00, 8.99]

puts format("$%.2f", total(prices))
puts format("$%.2f", refund(prices))
show_discounts(prices)