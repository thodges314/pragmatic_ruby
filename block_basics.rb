1.upto(3){ |number| puts "#{number}Echo!"}

class Order
	attr_reader :email, :total

	def initialize(email, total)
		@email = email
		@total = total
	end

	def to_s
		"#{email}: $#{total}"
	end
end


orders = []
1.upto(5) do |n|
	orders << Order.new("customer#{n}@example.com", rand(n*50))
end

puts orders
