# Given an array of strings made only from lowercase letters, return an array of all
# characters that show up in all strings within the given array (including duplicates)
# For example, if a character occurs 3 times in all strings but not 4 times, you need
# to include that character 3 times in the final answer.

# Example:  p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']

def common_chars(array)
  result_array = []
  first_string = array.shift
  contained = ''
  first_string.chars.each do |char|
    array.each do |string|
      if string.include?(char)
        contained = true
        string.slice!(char)
      else
        contained = false
        break # breaks out of array.each loop
      end
    end
    result_array << char if contained == true
  end
  result_array
end




p common_chars(['bella', 'label', 'roller']) # ["e", "l", "l"]
p common_chars(['apple', 'pear', 'peppermint', 'peach']) # ["p", "p", "e"]
# second output not correct. only one p in pear.  

# added string.delete!(char) if string.include?(char) . Has to be #delete!
# Now output:  ['p', 'e']
# delete returns the rest of the string without the argument to be deleted.
# pear.delete('p') => 'ear'
# still wrong.  delete! deleted all instances of char. first output is now ['e', 'l'].
# not correct.

# Changed delete! to slice! .  Now good. Mutating original array. see last method..
# ["e", "l", "l"]
# ["p", "e"]


# student solution:

def common_chars(array)
  chars = array.shift.chars

  chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

p common_chars(['pear', 'peach', 'apple']) # ["p", "e", "a"]

# chars.select: iterating through the characters of the first string in the array.
# array.all? : iterating through the original array, checking if char is in all of the 
# strings (words). AND removing the character once it is found. (word.sub!(char, ''))
# array.all? returns true because of 'truthy' value if char is in each word. returns true
# to #select which then selects the char. "Truthy" because word.sub!(char, '') returns the 
# word after substitution. Since returning any version of the word, it is a 'truthy' value.

# Returns false 'falsy' because if character is not in the string, word.sub!(char, '') returns
# nil.  Which is a 'falsy' value.  These two lines of code are selecting characters to put into 
# a new array by checking (with all?) if each string contains the character. all?'s return value 
# is based on what word.sub! returns (a string or nil) and is substituting '' for the character
# at the same time.  Sub is happening so the char won't be compared a second time.


# problem: array is being mutated. Fix by making copies of the STRINGS, not a shallow
# copy of the array.

arr = ['bella', 'label', 'roller']
# p common_chars(arr)
# p arr
# p common_chars(arr)

# ["e", "l", "l"]
# ["", "ror"]
# []

def common_chars(array)
  array = array.map { |word| word.dup }
  chars = array.shift.chars

  chars.select do |char|
    array.all? { |word| word.sub!(char, '') }
  end
end

# added array = array.map { |word| word.dup } (making copies of the strings and assigning
# the new array to the same variable name.)

p common_chars(arr)
p arr

# ["e", "l", "l"]
# ["bella", "label", "roller"]
