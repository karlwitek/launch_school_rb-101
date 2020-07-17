# Write a method that takes an integer and converts it to
# a string representation.  Represent the negative value if 
# number is negative.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_num_to_string(number)
  if number < 0
    negative = true
  else
    negative = false
  end

  str_num = ''
  loop do
    number, remainder = number.abs.divmod(10)
    str_num.prepend(DIGITS[remainder])
    break if number == 0
  end

  if negative
    str_num.prepend('-')
  else
    str_num
  end
end

puts signed_num_to_string(5)
puts signed_num_to_string(-34)
puts signed_num_to_string(+45)

# works.  LS -->
# solution uses method from previous exercise.

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else          integer_to_string(number)
  end
end

puts signed_integer_to_string(6)
puts signed_integer_to_string(-23)

# <=> operator compares the left side against the right side.
# Returns +1 if the left side is greater than the right.
# -1 if the left side is smaller than the right, and 0
# if the values are the same. Useful when you need to know
# whether a number is positive, negative or zero.

# Further Exploration. Refactor so integer_to_string is 
# called once, not three times.

def signed_integer_to_string2(number)
  if number < 0
    negative = true
  else 
    negative = false
  end
  display_string = integer_to_string(number.abs)
  if negative
    "#{'-'}#{display_string}"
  else
    display_string
  end
end

puts '======================'
puts signed_integer_to_string2(5)
puts signed_integer_to_string2(-45)
# works..

