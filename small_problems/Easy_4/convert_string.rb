# Write a method that takes a string of digits, and returns
# the appropriate number as an integer.  May not use 
# methods such as .to_i or Integer().

# hash = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
#         '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

# p hash

# def strint_to_integer(num_string)
#   digit = 0
#   spl_array = num_string.split('')
#   p spl_array
#   spl_array.each do |num|
#     hash[num] = digit
#     puts digit
#   end
# end

# string_to_integer('12')

#  NOT SOLVED.  LS below

hash = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
        '6' => 6, '7' => 7, '8' => 8, '9' => 9 }


def string_to_integer(string)
  digits = string.chars.map { |char| hash[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit}
  value
end

p string_to_integer('123')
