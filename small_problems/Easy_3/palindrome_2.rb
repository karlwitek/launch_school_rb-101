# Write a method that returns true if the string passed
# as an argument is a palindrome, false otherwise.  The method
# should be case-insensitive and should ignore all non-alphanumeric
# characters.

# def palindrome?(string)
#   #string.strip!
#   #string.downcase!
#   puts string =~/\w/
#   #new_string == new_string.reverse
 
# end


# #puts palindrome?('Madam   ') # true

## Could not solve this exercise. LS below

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam   ')
puts real_palindrome?('#@ madam %')

# see docs on String#delete, String#count
# and String#gsub

