# Get My Number Game
# Written by: you!

puts "Welcome to 'get my number!'"
print "What's your name? "

input = gets

name=input.chomp # cuts off the /n

puts "Welcome, #{name}!"

# p input
# Store random number to guess
target = rand(100) + 1
num_guesses = 0
guessed_it = false
puts "I have a random number between 1 and 100."
puts "Can you guess it?"

until num_guesses == 10 || guessed_it

	puts "You've got #{10-num_guesses} guesses left."
	print "Make a guess: "
	guess = gets.to_i

	num_guesses +=1

	if guess < target
		puts "Your guess is too low."
	elsif guess > target
		puts "Your guess is too high."
	else
		puts "Perfect!  You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end

end
#if player runs out of turns, tell them that they have lost.
unless guessed_it
	puts "Sorry, you didn't guess the number.  It was #{target}."
end