# Write a method that takes a string, and returns a new string in which every character is doubled.
# Example:   repeater('Hello') == "HHeelllloo"

def double_characters(string)
  doubled_string = ''
  string.chars.each do |char|
    doubled_string << char * 2
  end
  doubled_string
end

puts double_characters('Good job!')

# GGoooodd  jjoobb!!
# works. Another solution:

def double(string)
  result = []
  string.chars.each do |char|
    result << char * 2
  end
  result.join
end

puts double('Another Solution')

# AAnnootthheerr  SSoolluuttiioonn
# Good.  LS -->

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

puts repeater('launch school solution')

# Iterate through the original string while appending each character to the result 2 times.
# Finally, return the string. ( Note: each_char method )