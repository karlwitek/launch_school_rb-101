# Add to this method so the return value is a positive
# or negative number, depending on the string passed in,
# (if there is a '+' or '-' sign before the number)

HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3,
'4' => 4, '5' => 5, '6' => 6, '7' => 7,
'8' => 8, '9' => 9 }

def string_to_integer2(string)
  sign = ''
  digits = []
  array = string.split('')
  if array[0] == '-' || array[0] == '+'
    sign = array.shift
  end

  index = 0
  while index < array.length 
    digits << HASH[array[index]]
    index += 1
  end

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  if sign
    "#{sign}#{value}"
  else
    value
  end
end

puts string_to_integer2('-543') # -543
puts string_to_integer2('+500') # +500
puts string_to_integer2('4') # 4

# works.  LS -->

def string_to_integer2(string)
  digits = string.chars.map { |char| HASH[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer2(string[1..-1])
  when '+' then string_to_integer2(string[1..-1])
  else          string_to_integer2(string)
  end
end

puts string_to_signed_integer('-4444')
# works.  Further Exploration
# Refactor method so string[1..-1] and string_to_integer2
# is only called once each.

def string_to_signed_integer2(string)
  if string[0] == '-' || string[0] == '+'
    oper = string.slice!(0)
  end

  new_string = string_to_integer2(string)
  if oper
    "#{oper}#{new_string}"
  else
    new_string
  end
end

puts string_to_signed_integer2('-34')
puts string_to_signed_integer2('+100')
puts string_to_signed_integer2('2')


