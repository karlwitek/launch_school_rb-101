# Methods to test a valid number.

def valid_number?(num_str)
  input = /[^0-9]/.match(num_str)
  if input == nil
    true
  else
    puts "Enter a valid number"
  end

end

#valid_number('hi')
puts valid_number?('4')

def integer?(input)
  input.to_i.to_s == input
end

# Not perfect.. 0 will return true. 00 will return false
# LS solution 1

puts integer?('0')
puts integer?('hi')
puts integer?('00')

# LS solution 2

def integer2?(input)
  /^-?\d+$/.match(input)
end

puts '=============='
puts integer2?('3') # returns 3
puts integer2?('hi') # returns nothing (nil)
puts integer2?('00') # returns 00

# LS solution 3
def integer3?(input)
  Integer(input) rescue false
end

puts '==========='
puts integer3?('4')  # returns 4
puts integer3?('4.3') # returns false
puts integer3?('hi')  # returns false

# Kernel#Integer converts parameters to the method into
# an integer object.  Will raise a TypeError if the input
# is not a valid integer. Using a trailing 'rescue' is 
# not a good habit.
