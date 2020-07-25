# What happens when we modify an array while iterating over it? What would be
# the output by this code?

numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# output:   1  3
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# output: 1  2

# LS -->  augment the loop with some additional 'debugging' info

numbers.each_with_index do |number, index|
  p "#{index} #{numbers.inspect} #{number}"
  numbers.shift(1)
end

# output;
# "0 [1, 2, 3, 4] 1"
# "1 [2, 3, 4] 3"  
# The loop counter used by 'each' is compared against the current length of the
# array rather than its original length.  With the 'pop' example, the array is 
# shortened also, but the items removed are beyond the point we are sampling from
# in the abbreviated loop.  In both cases, see that iterators DO NOT work on a 
# copy of the original array or from stale meta-data(length) about the array.
# They operate on the original array in real time.


