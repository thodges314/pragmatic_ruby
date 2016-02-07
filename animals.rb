class Bird
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
	def make_up_age
		@age = rand(10)+1
	end

	def make_up_name
		@name = "Tweety"
	end

	def talk
		puts "#{@name} says Chirp!  Chirp!"
	end

	def move(destination)
		puts "#{@name} flyes to the #{destination}."
	end
	def report_age
		puts "#{@name} is #{@age} years old."
	end
end

class Dog
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
	def make_up_age
		@age = rand(10)+1
	end

	def make_up_name
		@name = "Sandy"
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

class Cat
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
	def make_up_age
		@age = rand(10)+1
	end

	def make_up_name
		@name = "Meowzers"
	end

	def talk
		puts "#{@name} says Meow!"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end
	def report_age
		puts "#{@name} is #{@age} years old."
	end
end


bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.make_up_name
bird.make_up_age
dog.name="Bowser"
dog.make_up_age
cat.make_up_name
cat.make_up_age

bird.move("tree")
dog.talk
bird.talk
cat.move("house")
bird.report_age
puts(dog.name)

bird.age=-5