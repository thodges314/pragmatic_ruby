def my_method(&my_block)
	puts "In the method about to invoke the block."
	my_block.call
	puts "Back in the method."
end


my_method do 
	puts "We are in the block."
	
end

def take_this
	yield "present"
end

take_this { |thing| puts "braces block got #{thing}."}