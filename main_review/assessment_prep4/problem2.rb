# Second problem from assessment.  Given a string of one or more words, find the letter that has the
# most occurrences in the string and return that letter.  If two or more letters have the same
# (largest number of occurrences), return the first letter in the string with that many occurrences.

# input - string of one or more words
# output - the letter with the most occurrences

# split string into an array of characters
# initialize a hash keys=letters, values = number of occurrences
# iterate over array of characters
# assign key/value pairs to hash while using #count called on string
# find value(s) with highest value with hash.values.max (assign to variable)
# call #each on hash with block that finds the key with the highest value
# explicitly return the key of the highest value 


def find_letter_of_most_occurences(string)
  hash = Hash.new(0)
  char_array = string.chars

  char_array.each do |letter|
    hash[letter] = string.count(letter)
  end
  max_value = hash.values.max

  hash.each do |key, value|
    if value == max_value
      return key
    end
  end
end

str = 'accddeefffffgg hijjjjjkllmno'

p find_letter_of_most_occurences(str) # f



