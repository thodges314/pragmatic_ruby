class Array
	def find_2
		for i in 0..size
			value = self[i]
			return value if yield(value)
		end
		return nill
	end
end
puts "testing find_2"

puts [1,2,5,7,9].find_2 {|v| v*v > 30}

##
puts "each"
[1,3,5,7,9].each {|i| puts i}

##
puts "collect"
p ["H", "A", "L"].collect {|x| x.succ}

##
puts '[1,3,5,7].inject(0) {|sum, element| sum+element}'
puts [1,3,5,7].inject(0) {|sum, element| sum+element}
puts '[1,3,5,7].inject(20) {|sum, element| sum+element}'
puts [1,3,5,7].inject(20) {|sum, element| sum+element}

puts '[1,3,5,7].inject(0) {|sum, element| sum*element}'
puts [1,3,5,7].inject(0) {|sum, element| sum*element}
puts '[1,3,5,7].inject(1) {|sum, element| sum*element}'
puts [1,3,5,7].inject(1) {|sum, element| sum*element}
puts '[1,3,5,7].inject(20) {|sum, element| sum*element}'
puts [1,3,5,7].inject(20) {|sum, element| sum*element}

puts '[1,3,5,7].inject {|sum, element| sum+element}'
puts [1,3,5,7].inject {|sum, element| sum+element}
puts '[1,3,5,7].inject {|sum, element| sum*element}'
puts [1,3,5,7].inject {|sum, element| sum*element}

#File.open("reviews.txt", "w") { |file| puts file.readlines}
# ^^^^ why won't this work?!

## procs
puts "procs"
def n_times(thing)
	return lambda {|n| thing * n}
end

p1 = n_times(23)
puts p1.call(3)
puts p1.call(4)
p2 = n_times("Hello ")
puts p2.call(3)

