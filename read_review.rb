lines = []	# define array from outside scope
File.open("reviews.txt") do |review_file|	# open file safelym saving lines to line array
	lines = review_file.readlines
end

# puts lines.length

# relevant_lines = []
# lines.each do |line|
# 	if line.include?("Truncated")
# 		relevant_lines << line
# 	end
# end

relevant_lines = lines.find_all{|line| line.include?("Truncated")}	#passes lines array in, one line at a time, and passes out an array including lines with Truncated

reviews = relevant_lines.reject{|line| line.include?("--")} 	#same as above but backwards

# puts reviews

## we now have all of the lines about Truncated in an array

def find_adjective(string)
	words = string.split(" ")
	index = words.find_index("is")
	words[index+1]					##only has return value when an adjective exists
end

## adjectives = []
## reviews.each do |review|			## cycles through each line and returns output of find_adjective *function*
##	adjectives<< find_adjective(review)
## end

# adjectives = reviews.map {|review| find_adjective(review)}

adjectives = reviews.map do |review|
	adjective = find_adjective(review)
	"'#{adjective.capitalize}'"
end

puts adjectives