# Formal pseudo code from example in Intro to PEDAC process.
# pseudo code for substrings method:
# START
# Given a string named 'string'
# SET result = []
# SET starting_index = 0
# WHILE starting_index <= length of string - 2
# SET numChars = 2
# WHILE numChars <= length of string - starting index
#   SET substring = num_chars characters from string starting
#    at index starting index 
#   append substring to result array
#   SET num_chars = num_chars + 1
# RETURN result
# end

# write substrings method first
def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

# write is_palindrome? method. Check whether the string value
# is equal to its reversed value using String#reverse method.

def is_palindrome?(str)
  return str == str.reverse
end

# palindrome_substrings method
# initialize a result variable to an empty array
# create an array named substring_arr that contains all of the 
# substrings of the input string that are at least 2 characters long.
# loop through the words in the substring_arr array.
# if the word is a palindrome, append it to the result array
# return the result array.

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

p palindrome_substrings('abba')
p palindrome_substrings('abcdedddcc')
p palindrome_substrings('')
p palindrome_substrings('hghtytada')
