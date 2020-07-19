# Write a method that determines and returns the ASCII string value
# of a string that is passed in as an argument.  The ASCII string value
# is the sum of the ASCII values of every character in the string.
# ok to use String#ord (determines the ASCII value of a character)

def ascii_string_value(string)
  array_of_words = string.split(' ')
  sum = 0
  array_of_words.each do |word|
    word.split('').each { |char| sum += char.ord }
  end
  sum
end

puts ascii_string_value('CR')
puts ascii_string_value('a')
puts ascii_string_value('aa')
puts ascii_string_value('aaa aaa')
puts ascii_string_value('dog')

# works. LS ->

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('dog')

# Initialize the sum to zero(which takes care of the empty string
# case in addition to giving us a starting value) then add String#ord
# for every character to that sum. Finally, return the sum.

# Further Exporation.  There is an integer method such that:
# char.ord.mystery == char
# Determine which method name should be used in place of 'mystery'.
# What happens if you try this with a longer string insted of a 
# single character?

a = 'b'
puts a.ord  # 98 , the ascii value of 'b'
puts a.ord.chr # b

c = 'dog'
puts 'd'.ord # 100 , the ascii value of 'd'
puts c.ord  # 100 , the ascii value of first character
