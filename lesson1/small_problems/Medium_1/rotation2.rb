# Write a method that can rotate the last n digits of a number.
# example:   rotate_rightmost_digits(735291, 3) == 735912
# Check for case of rotating 1 digit, should be the original number.
# You may assume n is always a positive integer.  Try to use method from previous exercise.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, num_of_digits)
  array_of_numbers = number.to_s.split('')
  right_most_digits = array_of_numbers[-num_of_digits..-1]
  right_digits_rotated = rotate_array(right_most_digits)

  (array_of_numbers[0...-num_of_digits] + right_digits_rotated).join.to_i
end

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 6)

# 735291
# 735219
# 735912
# 732915
# 352917

# LS --> 

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(987654, 3) # 987546

# Since we will be working with rotate_array, we need an array.  To do this, we simply convert
# the number to a string, and then split it out into its individual digits.  Then we use this
# construct:  all_digits[-n..-1], this construct returns the last n elements of the all_digits 
# array.  This is a common shorthand.  We pass all_digits[-n..-1] to our rotate_array method
# from the previous exercise, it returns a new array with digits rotated as needed.  We then 
# assign the return value of rotate_array to all_digits[-n..-1].  When an expression like this
# appears on the left side of an assignment, it means 'replace the last n elements with the 
# values to the right side of the equal sign'.   We replace the last n digits with the 
# rotated digits.  Finally, we convert the all_digits array back to an integer.





