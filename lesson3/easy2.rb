# Practice Problems: Easy 2

ages = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402,
         'Eddie' => 10 }
# see if 'Spot' is present

puts ages.has_key?('Spot')  # false
# LS solutions
puts ages.key?('Spot')
puts ages.include?('Spot')
puts ages.member?('Spot') # all false

munsters_description = "The Munsters are creepy in a good way."
# convert the string in various ways

puts munsters_description.upcase
puts munsters_description.downcase

puts munsters_description.swapcase
puts munsters_description.capitalize # only the first letter of string

# LS uses ! to convert the string w/out printing out
# ex:   munsters_description.upcase!

# add ages for Marilyn and Spot to existing hash

ages2 = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402,
         'Eddie' => 10 }

additional_ages = { 'Marilyn' => 22, 'Spot' => 237 }

p ages2.merge(additional_ages)

# good. LS ages2.merge!(additional_ages)

# Question 4: see if 'Dino' appears in the the string

advice = "Few things in life are important as house training" \
         " your pet dinosaur."
puts advice

puts advice.include?('Dino') # work with 'dino'

# LS --->
puts advice.match?('Dino') # still false (case - sensitive)
# note: not a perfect solution, would match any substring 
# with Dino it it.

# Question 5
flintstones = ['Fred', 'Barney', 'Wilma', 'Betty', 'BamBam', 'Pebbles']

# write this array in an easier way:
flintstones2 = %W(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones2

# solution matches
# Question 6  how to add 'Dino' to array
# flintstones2 << 'Dino'  / is solution
p flintstones2

# matches .. .concat and .push works the same

# 7  . How can we add multiple items to the array
flintstones2.push('Dino', 'Hoppy')
p flintstones2

# worked . LS -->
flintstones2.push('Dino').push('Hoppy') 
# push returns the array so we can chain.  OR

flintstones2.concat(%w(Dino Hoppy))
# concat adds an array rather than one item

p flintstones2

# 8. shorten this sentence:

advice2 = "Few things in life are important as house training" \
         " your pet dinosaur."
puts advice2.slice!(0, advice.index('house'))
puts advice2

statement = "The Flintstones Rock!"
# write one line of code to count the number of lower case 't'
# in statement

puts statement.count('t')
# matches LS solution

# 10: center 'title' above table that is 40 characters wide

title = "Flintstone Family Members"
num_of_spaces = (40 - title.length) / 2
puts (' ' * num_of_spaces.to_i) + title

# works . LS -->
puts title.center(40)
puts ' ' * 20 + 'x' # my experiment

