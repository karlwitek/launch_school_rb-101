# Write a method that takes an Array of integers as input, multiplies all the numbers together,
# divides the result by the number of entries in the Array, and then prints the result rounded
# to 3 decimal places.  Assume the array in non-empty.

def multiplicative_average(array)
  product = array.inject(:*).to_f
  format('%0.3f', (product / array.size))

end


a = [2, 3, 4]
b = [2, 2, 2, 2, 2]
c = [3, 5, 7, 8, 9, 9, 9, 9, 9]
d = [10, 10, 10]
puts multiplicative_average(a)
puts multiplicative_average(b)
puts multiplicative_average(c)
puts multiplicative_average(d)

# 8.000
# 6.400
# 5511240.000
# 333.333

# LS -->

def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average(b)

# The result is 6.400
# For simplicity, used .each instead of Enumerable#inject. 
# Further: What happens if you omit the call to #to_f on the first line of our method?
# answer:  results in integer division. Returns a whole number with 3 zeros as the 
# decimal portion. (rounds down)


