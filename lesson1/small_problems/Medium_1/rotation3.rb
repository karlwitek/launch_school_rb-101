# Write a method that takes an integer as argument, and returns the maximum rotation of
# that argument.  Use the rotate_rightmost_digits method from the previous exercise.
# The maximum rotation of the argument is attained by rotating the argument to the left.
# Next, keep the first digit in place and rotate the remaining digits. Next, keep the 
# first two digits in place and rotate the remaining digits. Repeat until only the last 
# two digits are being rotated.  If the argument(number) is 6 digits in length, the last 
# rotation is performed on the last two digits while the first 4 digits are kept in place.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  n = number.to_s.chars.size
  rotated_number = number

  (n - 1).times do
    rotated_number = rotate_rightmost_digits(rotated_number, n)
    n -= 1
  end
  rotated_number
end

puts max_rotation(735291)
puts max_rotation(3)
puts max_rotation(35)
puts max_rotation(105)
puts max_rotation(8_703_529_146)

# 321579
# 3
# 53
# 15
# 7321609845

# LS -->

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

puts max_rotation(735291) # 321579

# Our max_rotation method begins by first determining how many digits we have, then starts up
# a loop.  The loop repeatedly rotates the number, starting with the rightmost n digits, then
# the rightmost n-1 digits, and so on, until we get down to the last 2 digits. (We could 
# also include 1, but it is not needed since it does not modify the number when we rotate just
# the last digit.)
# Look up .downto method.  Value of |n| ?  (starts with max value?)

# Further:  Assume you do not have the rotate_rightmost_digits or rotate_array methods.  How
# would you approach this problem?  Would your solution look different?  Does this 3 part 
# approach make the problem easier to understand or harder?

# There is an edge case in our problem when the number passed in as the argument has multiple
# consecutive zeros.  Can you create a solution that preserves zeros?

def max_rotate(number)
  digits_array = number.to_s.chars
  count = digits_array.size
  
  (count - 1).times do |idx|
    rotated_digit = digits_array.slice!(idx)
    digits_array << rotated_digit
    
  end
  digits_array.join.to_i
end

p max_rotate(12345) # 24153
p max_rotate(735291) # 321579

p max_rotate(230005) # 305020 

# This method preserves zeros that are contained in the number (not starting with zeros).
# This method is mutating the digits_array while iterating over.  Usually, this does 
# not work out.  Since the element is pushed onto the array before the next iteration,
# .slice! is still called on the correct element. (the index is accurate)

p max_rotate(000345) # 229  229 is the decimal equivalent to the octal number 345.
#  When 229 is passed as an argument to max_rotate, rotation happens twice and 229
# is returned.  ( correct output ! ) .  Still not preserving leading zeros...

