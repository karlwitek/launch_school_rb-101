# Write a method that accounts for inputs that include
# decimals or integers.

def number?(input)
  input.to_i || input.to_f == input
end

puts number?('3') # 3
puts number?('3.12') # 3
puts number?('hi') # 0

# seems to work.  my solution

def number2?(input)
  /\p{N}/.match(input) || /\p{Nd}/.match(input)
end

puts '=============='
puts number2?('3')
puts number2?('0')
puts number2?('3.14')

# seems to work. my solution

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number3?(input)
  integer?(input) || float?(input)
end

# LS solution.  Edge case of (1.) . Doesn't match
# original string . to_f converts 1. to 1.0 

puts '=================='
puts number3?('3') # true
puts number3?('2.334') # true
puts number3?('1.') # false

# LS solution using regex

def float2?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

puts '=============='
puts float2?('5') # 5
puts float2?('2.344') # 2.344
puts float2?('hello') # nothing (nil)

# Similar to the regex in the integer? method, except we
# have to account for more possible formats.  We can combine
# two validations to verify that the input is a valid float.
# The first validation verifies that there is at least one
# digit in the input.  The second validation uses * which 
# stands for zero or more, and the ? (zero or one). Can be 
# read as 'zero or more digits, followed by an optional period,
# followed by zero or more digits'. Works , except will not 
# accept a period by itself. Note, the period is prefixed by
# a \.  A period matches any single character in regex. By
# escaping it, we tell Ruby we are looking for the actual
# period character.

# LS solution 3

def float3?(input)
  Float(input) rescue false
end

puts '==============='
puts float3?('2') # 2.0
puts float3?('3.456') # 3.456
puts float3?('hello') # false

# Uses the Kernel#Float method, analagous to the Kernel#Integer
# method from earlier.  Raises an exception if not passed
# a valid float.  Again , trailing 'rescue' is a 'code smell'
# Not the best habit

# regex seems best but there are some subtle edge cases with it.




