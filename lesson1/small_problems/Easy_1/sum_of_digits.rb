# Write a method that takes one argument, a positive
# integer, and returns the sum of its digits.

def sum_digits(integer)
  arr = integer.to_s.chars.map { |num| num.to_i }
  arr.reduce(:+)
end

puts sum_digits(876)
puts sum_digits(23) == 5
# works.. LS solution below
# solution 1

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

puts sum(432)

# solution 2
def sum2(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum2(543)

# Convert the integer to a string, so it can be split into an array.
# Want to iterate over the array and increment the sum by the given 
# digit .  On each iteration, increment the sum by the given digit back
# to an integer.  Can convert an array of strings to array of integers
# by using #map and Ruby's shorthand syntax.
##  array.map(&:to_i) .  same as array.map {|elem| elem.to_i}
# It is possible to invoke all these methods due to the return value of
# each method. 
# 23.to_s    => "23"
# .chars    => ["2", "3"]
# .map(&:to_i)  => [2, 3]
# .reduce(:+)   => 5
