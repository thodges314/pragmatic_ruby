def accelerate
	puts "Stepping on the gas."
	puts "Speeding up."
end

def sound_horn
	puts "Pressing hte horn button."
	puts "Beep beep!"
end

def use_headlights(brightness = "low beam")
	puts "Turning on #{brightness} headlights."
	puts "Watch out for deer!"
end

def milage(miles_driven, gas_used)
	if gas_used == 0
		return 0.0
	end
	miles_driven/gas_used	#implicit return
end


def print_area(length, width)
	puts length*width
end

def order_soda(flavor, size="medium", quanitity = 1)
	if quanitity == 1
		plural = "soda"
	else
		plural = "sodas"
	end

	puts"#{quanitity} #{size} #{flavor} #{plural}, coming right up!"
end

sound_horn
accelerate
use_headlights("high-beam")
use_headlights
print_area(5,5)
order_soda("Dr Pepper")
order_soda("Strawberry", "Large", 4)
order_soda("Mr Pibb", 6) ##does not recognise this as quantity
## order_soda("Mr Pibb",, 6) <--- does not work

trip_milage = milage(400,12)
puts "You got #{trip_milage} mpg on this trip."

lifetime_milage = milage(11432, 366)
puts "This car averages #{lifetime_milage} mpg."

puts milage(0,0)