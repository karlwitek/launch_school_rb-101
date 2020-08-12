# Write a method that takes a non-empty string argument, and returns the middle character or
# characters of the argument.  If the argument has an odd length, you should return exactly 
# one character.  If the argument has an even length, you should return exactly two characters.

def middle_character(string)
  array = string.split('')
  middle_char = ''
  middle_index = (array.size / 2.0).floor
  if array.size.odd?
    middle_char << array[middle_index]
  else
    middle_char << array[middle_index - 1] << array[middle_index]
  end
  middle_char
end

puts middle_character('character') # a
puts middle_character('characters') # ac
puts middle_character('a') # a  (.floor returns 0, which is proper index)

# Good . Another solution with .slice

def middle_character(string)
  array = string.split('')
  middle_index = (array.size / 2.0).floor
  if array.size.odd?
    array.slice(middle_index)
  else
    array.slice((middle_index - 1), (middle_index)).join
  end
end

puts middle_character('aba') # b
puts middle_character('abba') # bb
puts middle_character('b') # b

# calling p on middle_character => "b", "bb" . calling puts => b, bb
# puts calls 'to_s' on object?  (check)
# works. LS -->

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2] # 2 is the number of character contained in 'slice'
  end
end

puts center_of('seven') # v

# Divide the string length by 2 to get either the index we want for an odd length string(5/2 == 2)
# (integer division) or the index of the character just to the right of center(4/2 == 2) for an even
# length string.  2 gets the middlemost character for the odd length string. For an even length
# string, we want the character at the indicated index (2), and the character just prior to it;
# we use the substring-ing form of the String#[] method to extract 2 characters at center_index - 1.




