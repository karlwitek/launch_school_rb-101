# A double number is a number with an even number of digits whose left-side digits are
# exactly the same as its right-side digits. examples: 44, 3333, 103103. 444 is not.
# Write a method that returns 2 times the number provided as an argument, unless the
# argument is a double number; double numbers should be returned as-is.

def double_it(number)
  array = number.to_s.split('')
  if array.size.odd?
    number * 2
  else
    half_index = array.size / 2
    if array[0...half_index] == array[half_index..-1]
      number
    else
      number * 2
    end
  end
end

puts double_it(44)
puts double_it(3333)
puts double_it(102102)
puts double_it(111)
puts double_it(123_456_789_123_456_789)
puts double_it(8)

# 44
# 3333
# 102102
# 222 (not a double number)
# 123456789123456789
# 16

#  works.  LS -->

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '': string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

puts twice(55) # 55
puts twice(556) # 1112
puts twice(8) # 16

# .zero? Returns true if num has a zero value (docs). Only going to be true if 'center' is zero.
# if string_number.size == 1, then divided by 2, and then round down (integer division) to 0.
# Most of the time, center will not be zero, but string_number[0..center - 1], which is the value
# of left_side will not equal right_side. This is the logic of the solution.  If the string_number.size
# is an even number, then the number of elements on each side will be equal, then check if the elements,
# themselves are equal.
# There is an edge case for single digit numbers. (in theory).  If center was equal to zero, and we
# did not execute the ternary with .zero? as the conditional, could end up with the left_side and
# right_side being set to string_number[0..-1] which would satisfy the condition for being a 
# double number.  My solution handles this edge case by checking array.size.odd? .






