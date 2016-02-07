class Animal
	attr_reader :name, :age

	def name=(value)
		if value == ""
			raise "Name can't be blank!"
		end
		@name = value
	end

	def age=(value)
		if value < 0
			raise "An age of #{value} isn't valid!"
		end
		@age = value
	end

	def talk
		puts "#{@name} says Bark!"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end
	def report_age
		puts "#{@name} is #{@age} years old."
	end
end

class Dog < Animal
	def to_s
		"#{@name} the dog, age #{age}"
	end
end
class Bird < Animal
	def to_s
		"#{@name} the bird, age #{age}"
	end
	def talk
		puts "#{@name} says Chirp!"
	end
end
class Cat < Animal
	def to_s
		"#{@name} the cat, age #{age}"
	end
	def talk
		puts "#{@name} says Meow!"
	end
end
class Armadillo < Animal
	def to_s
		"#{@name} the armadillo, age #{age}"
	end
	def move(destination)
		puts "#{@name} unrolls!"
		super
	end
end



whiskers = Cat.new
whiskers.name = "Whiskers"
whiskers.age = 10
fido = Dog.new
fido.name = "Fido"
fido.age = 6
polly = Bird.new
polly.name = "Polly"
polly.age = 31
arnie = Armadillo.new
arnie.name = "Arnie"
arnie.age = 2

polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk
arnie.move("California")
puts polly.to_s