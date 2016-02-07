name = "Fats Waller"
puts name =~ /a/
puts name =~ /z/
puts /a/ =~ name

def show_regexp(a, re)
	if a =~ re
		puts "#{$`}<<#{$&}>>#{$'}"
	else
		puts "no match"
	end
end

puts "show_regexp"
show_regexp('very interesting', /t/)
show_regexp('Fats Waller', /a/)
show_regexp('Fats Waller', /ll/)
show_regexp('Fats Waller', /z/)

show_regexp('Price $12.', /[aeiou]/)
show_regexp('Price $12.', /[\s]/)
show_regexp('Price $12.', /[[:digit:]]/)
show_regexp('Price $12.', /[[:space:]]/)
show_regexp('Price $12.', /[[:punct:]aeiou]/)

a = 'see [Design Patterns-page 123]'
show_regexp(a, /[A-F]/)
show_regexp(a, /[A-Fa-f]/)
show_regexp(a, /[0-9]/)
show_regexp(a, /[0-9][0-9]/)

a = "The moon is made of cheese"
show_regexp(a, /\w+/)
show_regexp(a, /\s.*\s/)
show_regexp(a, /\s.*?\s/)
show_regexp(a, /[aeiou]{2,99}/)
show_regexp(a, /mo?o/)

a= "red ball and blue sky"
show_regexp(a, /d|e/)
show_regexp(a, /al|lu/)
show_regexp(a, /red ball|angry sky/)

a = 'banana'
show_regexp(a, /an*/)
show_regexp(a, /(an)*/)
show_regexp(a, /(an)+/)

a = 'red ball blue sky'
show_regexp(a, /blue|red/)
show_regexp(a, /(blue|red) \w+/)
show_regexp(a, /(red|blue) \w+/)
show_regexp(a, /red|blue \w+/)
show_regexp(a, /red (ball|angry) sky/)
a = 'the red angry sky'
show_regexp(a, /red (ball|angry) sky/)


puts "12:50am" =~ /(\d\d):(\d\d)(..)/
puts "Hour is #{$1}, minute is #{$2}."
puts "12:50am" =~ /((\d\d):(\d\d))(..)/
puts "Time is #{$1}."
puts "Hour is: #{$2} and Minute is: #{$3}."
puts "AM/PM is #{$4}."

puts show_regexp('He said, "Hello."', /(\w)\1/)
puts show_regexp('Mississippi', /(\w+)\1/)
# (\w) selects a letter as $1, (\w+) selects a string of 1 or more letters as 1
# \1 looks for another instance of $1

puts show_regexp('He said, "Hello."', /(['"]).*?\1/) 
puts show_regexp("He said, 'Hello.'", /(['"]).*?\1/)

a = "the quick brown fox"
puts a.sub(/[aeiou]/, '*')
puts a.gsub(/[aeiou]/, '*')
puts a.sub(/\s\S+/, '')
puts a.gsub(/\a\S+/,'')

puts a.sub(/^./){|match| match.upcase}
puts a.gsub(/[aeiou]/){|vowel| vowel.upcase}

