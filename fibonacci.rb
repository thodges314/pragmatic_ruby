def fib_up_to(max)
	i1, i2 = 1,1
	while i1 <= max 
		yield i1
		i1, i2 = i2, i1+i2
	end
end

fib_up_to(1000000000) {|f| print f, " "}

###

puts ""
print ["H", "A", "L"].collect{|x| x.succ}

puts""
puts [1,3,5,7].inject(20) {|sum, element| sum + element}

###

def call_block
	puts "Start of method"
	yield
	yield
	puts "End of method"
end

call_block {puts "In the block"}

###

# {puts "In the block"}.do
# 	puts "Start of method"
# 	yield
# 	yield
# 	puts "End of method"
# end

###

animals = %w( ant bee cat dog elk)
animals.each {|animal| puts animal}

###

['cat', 'dog', 'horse'].each {|name| print name, " "}
5.times {print "*"}
3.upto(6) {|i| print i}
('a'..'e').each {|char| print char}
puts""
 
 ##
 line = "parrot: "
 until line.chomp =="quit"
 	puts line
 	line = gets
 end
