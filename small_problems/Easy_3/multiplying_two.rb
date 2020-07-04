# Create a method that takes two arguments, multiplies them
# together, and returns the result.

def multiply(num_one, num_two)
  num_one * num_two
end

puts multiply(5, 4)

#  works.  LS school example show an incorrect implementation
# with puts n1 * n2 as the second line inside the method.
# Point they are making is that we want the return value , not
# its output.  puts returns nil.

# Further Exploration . What happens if the first argument is an
# array?  What is happening ?

def multiply(num_one, num_two)
  num_one * num_two
end

p multiply([1, 2, 3], 4)

# The value returned is an array with the contents of the first
# argument repeated 4 times.



