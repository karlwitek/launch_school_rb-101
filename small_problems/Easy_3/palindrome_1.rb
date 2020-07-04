# Write a method that returns true if the string passed as and argument
# is a palindrome, false otherwise.  A palindrome reads the same forward
# or backward. For this exercise, case matters as does punctuation
# and spaces.

def is_palindrome(string)
  if string == string.reverse
    true
  else 
    false
  end
end

puts is_palindrome('abba')
puts is_palindrome('abba ')

# works.  LS below

def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam')

## Further Exploration

# Write a method that determines whether an array is palindromic.
# ( elements appear in the same sequence both forwards and backwards)
# Second, write a method that can take either an array or a string 
# argument, and determines whether that argument is a palindrome.
# Don't use an if, unless, or case statement or modifier.

def palindrome_array(array)
  array == array.reverse
end

puts '-----------------'
puts palindrome_array([2, 2, 4, 2, 2])
puts palindrome_array(['is', 'this', 'is'])
puts palindrome_array('not one')
puts palindrome_array('madam')

# Done. Ruby interprets the argument. An array or string
# is accepted.

