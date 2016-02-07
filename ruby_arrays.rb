puts "arrays"

a = [3.14159, "pi", 99]
puts a.class
puts a.length
# a.each {|n| puts n}
#0.upto(3) {|n| print a[n], " "}
0.upto(3) {|n| puts a[n]}
puts""

## hashes
h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
puts h.length
puts h['dog']
h['cow'] = 'bovine'
h[12] = 'dodecine'
h['cat'] = 99
p h

## backwards arrays
a = [1,3,5,7,9]
puts a[-3..2]