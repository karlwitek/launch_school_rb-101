# Write a method that takes one argument, a positive
# integer, and returns a string of alternating 1's and
# 0's, always starting with 1.  The length of the string
# should match the given integer.

def ones_zeros(integer)
  index = 1
  binary_string = ''
  while integer > 0
    if index % 2 == 0
      binary_string << '0'
    else
      binary_string << '1'
    end
    index += 1
    integer -= 1
  end
  binary_string
end

puts ones_zeros(1)
puts ones_zeros(5)
puts ones_zeros(18)

## Works !  LS solution below
#  Used << on a string in my solution

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(1)
puts stringy(9)

## Use .times to iterate based on the number indicated by 'size'
# index block parameter to determine if the current number is even
# or odd.  starts at 0, so first number is even. Write the conditional
# to return 1 if even ( returns to value of number ), 0 if odd with a 
# ternary operator.
# Add the number to an array then call .join

# Further Exploration
# modify stringy so it takes on optional argument that defaults to 1.
# If the method is called with this argument set to 0, the method should 
# return a string of numbers starting with 0.

def revised_stringy(size, int = 1)
  numbers = []

  size.times do |index|
    if int == 1
      number = index.even? ? 1 : 0
    else
      number = index.even? ? 0 : 1
    end
    numbers << number
  end
  numbers.join
end


puts revised_stringy(5)
puts revised_stringy(5, 0)



