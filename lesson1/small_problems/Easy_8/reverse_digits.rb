# Write a method that takes a positive integer as an argument and returns with
# its digits reversed. Don't worry about arguments with leading zeros-Ruby sees
# those as octal numbers.  Even a return value will not have leading zeros.
# ex.  (21000) => (12)

def reverse_digits(positive_integer)
  positive_integer.to_s.reverse.to_i
end

puts reverse_digits(456) # 654

# another solution:

def reverse_digits2(int)
  int.to_s.split('').reverse.join.to_i
end

p reverse_digits2(234) # 432  split into array ( not needed )

p reverse_digits(21000) # 12
p reverse_digits(000034) # 82 
# is 34 an octal number? (YES. 28 is the decimal equivalent number!!! then reversed = 82)

# LS -->

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

p reversed_number(678) # 876

# An approach that talks more about logical steps than procedural descriptions. 'Convert the 
# number to a string, reverse the string, convert the result to a number'. The key to this 
# approach is to break the problem down into logical steps that mirror the operations you can
# perform on the types used in your method.

# another solution of mine with a loop:

def reverse_with_loop(int)
  array = int.to_s.split('')
  dup_array = array.dup
  result_array = []
  dup_array.each do
    last_element = array.pop
    result_array << last_element
  end
  result_array.join
end

puts reverse_with_loop(1234) # 4321


