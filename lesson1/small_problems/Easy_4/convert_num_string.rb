# Write a method that takes a positive integer or zero and 
# converts it to a string representation.  May not use
# .to_s, String() or Kernel#format.

def number_to_string(integer)
  array_of_integers = []
  while integer != 0
    array_of_integers << integer % 10
    integer /= 10
  end
  array_of_integers.reverse.join
end

p number_to_string(3) # '3'
p number_to_string(12345) # '12345'
puts number_to_string(33) + ' hello' # 33 hello

# works 
# Using .join might not be correct. Also did not use a 
# hash to convert.  
# . LS -->

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

puts '================='
puts integer_to_string(78)

# Use an array instead of a hash. Can get the string equivalent by
# DIGITS[5] ( 5 is the index). number.divmod returns two values. 
# The value of number divided by 10 (using integer division) and the
# remainder of that division.  The remainder is the rightmost digit so
# we prepend to the current result value.  Once number is whittled down
# to 0, we're done.

# Further Exploration is a question about methods that end with a !.
# see notes.

