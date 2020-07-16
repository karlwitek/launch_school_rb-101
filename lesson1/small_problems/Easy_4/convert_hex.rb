# Further Exploration
# Write a method that will take a hexidecimal number
# as a string and convert it to a decimal number (integer)

HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
         '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
         'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
         'E' => 14, 'F' => 15 }

def hex_string_to_decimal(string)
  digits = string.chars.map { |char| HASH[char] }
  value = 0

  digits.each { |digit| value = 16 * value + digit }
  value
end

puts hex_string_to_decimal('E2')
puts hex_string_to_decimal('D1CE')

# above similar to LS solution in previous exercise

# again
def hex_decimal(string)
  array_hex = string.split('')
  array_numbers = array_hex.map { |hex| HASH[hex] }
  decimal = 0

  while array_numbers.length > 0 do
    n = array_numbers.length
    i = array_numbers.shift
    decimal += i * 16**(n-1)
  end
  decimal
end

puts '================='
puts hex_decimal('E')
puts hex_decimal('D1CE')


    

