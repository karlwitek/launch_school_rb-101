# Write a method that takes a string of digits, and returns
# the appropriate number as an integer.  May not use 
# methods such as .to_i or Integer().

# hash = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
#         '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

# p hash

# def strint_to_integer(num_string)

#  NOT SOLVED.  LS below

HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
        '6' => 6, '7' => 7, '8' => 8, '9' => 9 }


# string = '123'
# dig = string.chars.map { |char| hash[char] }
# p dig

def string_to_i(str)
  digits = str.chars.map { |char| HASH[char] }
  #a = digits.join + 100
  #puts a

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value * 2

end

p string_to_i("123")
