# Write a method that takes one argument, an array containing
# integers, and returns the average of all numbers in the
# array.  The array will never be empty and the numbers will
# always be positive integers.

def find_average(array)
  array.sum / array.size.to_f
end

puts find_average([1, 2, 3])
puts find_average([4, 6, 8, 9, 23, 1, 4, 67])
puts find_average([1, 5, 87, 41, 8, 8]) == 25
puts find_average([1, 2, 3]) == 2
## works!  add .to_f to allow for float number.  Happens to be
# the Further Exploration part of this exercise


# LS solution

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

puts average([2, 4, 6])
puts average([1, 2, 3]) == 2

# Found the sum by using .reduce ( also known as #inject ) 
# It combines all the elements of the array by applying a binary
# operation.  The operation is specified by a block or symbol.
# example of using a symbol
# numbers.reduce(:+)  // Used #count to count the numbers of elements
# in numbers.  divide sum by the number of elements and return the 
#quotient




