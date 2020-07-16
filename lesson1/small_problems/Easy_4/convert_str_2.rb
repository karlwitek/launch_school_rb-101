HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3,
         '4' => 4, '5' => 5, '6' => 6, '7' => 7,
         '8' => 8, '9' => 9 }

# def string_to_integer(str_num)
#   array_of_strings = str_num.split('')
#   array_of_strings.map { |s| HASH[s] }.join
# end

# p string_to_integer('345')

# returns "345" . Not Correct.

def str_to_array_of_num(string)
  arr = string.split('')
  arr_num = []
  arr.each do |element|
    arr_num << HASH[element]
  end
  # arr_num.join
  arr_num
end

#  It is the .join that returns the numbers as strings..

def str_to_int(str_num)
  arr_num = str_to_array_of_num(str_num)
  new_num = 0
  while arr_num.length > 0
    n = arr_num.length
    i = arr_num.shift
    new_num += i * 10**(n-1)
  end
  new_num
end

puts str_to_int('4321')


# initially wrote with arr_num.each.  Bad results 
# because .shift was mutating the array while iterating
# through.

# LS -->
def string_to_integer2(string)
  digits = string.chars.map { |char| HASH[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_integer2('5432')
