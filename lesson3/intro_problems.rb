
# Determine if 42 lies between 10 and 100

#(10.100).cover?(42)
# works in irb.  see docs for use in code.

famous_words = "seven years ago.."

puts "Four score and " + famous_words

puts famous_words.prepend("Four score and ")
# note: .prepend mutated string

puts "Four score and " << famous_words
# output 'Four score and Four score and seven..'

# Question 7
flintstones = ['Fred', 'Wilma']
flintstones << ['Barney', 'Betty']
flintstones << ['BamBam', 'Pebbles']

p flintstones
# make it an un-nested array

flintstones.flatten!
p flintstones


flintstones_hash = { 'Fred' => 0, 'Wilma' => 1, 'Barney' => 2,
                     'Betty' => 3, 'BamBam' => 4, 'Pebbles' => 5 }
# turn into an array with only Barney's name and number

# arr = flintstones_hash['Barney'].to_a  / Wrong..

arr = flintstones_hash.assoc('Barney')
p arr
# works. see docs on .assoc
