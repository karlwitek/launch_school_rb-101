# Write a method that takes an integer and converts it to
# a string representation.  Represent the negative value if 
# number is negative.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_num_to_string(number)
  if number < 0
    negative = true
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

# 

