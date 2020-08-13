# Create a method that takes two integers as arguments.  The first argument is a count, and
# the second is the first number of a sequence that your method will create. The method
# should return an Array that contains the same number of elements as the count argument,
# while the values of each element will be multiples of the starting number.
# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value. If the count is 0, an empty list
# should be returned.

def sequence_count(count, starting_number)
  array = []
  accumulator = starting_number
  count.times do
    array << accumulator
    accumulator += starting_number
  end
  array
end

p sequence_count(5, 1) # [1, 2, 3, 4, 5]
p sequence_count(4, -7) # [-7, -14, -21, -28]
p sequence_count(0, 5) # []

# LS -->

def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

p sequence(6, -5) # [-5, -10, -15, -20, -25, -30]

# another LS solution:

def sequence(count, first)
  (1..count).map { |value| value * first }
end

p sequence(4, 5) # [5, 10, 15, 20]

# First solution: Integer#times method will execute the content of the block the number of
# times specified by the integer.  On each iteration, we first append number to our
# sequence array and then increment number by the value of first. When all iterations are 
# completed, the sequence array contains all the elements needed and we just have to 
# return it.

# Second solution: Create a range from 1 to count, as we realize that the array our method
# needs to return will have that many elements in it. Note: ranges have access to Enumerable
# methods, such as map. You don't need to convert it to an array before, it will be treated
# as one.  Within the block we then simply multiply the index(each number of the range) by
# the sequential multiplier which gives us our value for each position in the array.

