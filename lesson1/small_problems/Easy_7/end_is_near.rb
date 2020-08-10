# Write a method that returns the next to last word in the string passed to it as an
# arguement.  Words are any sequence of non-blank characters.
# You may assume that the input string will always contain at least two words.

def next_to_last(string)
  string.split[-2]
end

puts next_to_last('is anybody out there?')
# out
# works.. LS -->

def penultimate(words)
  words_array = words.split
  words_array[-2]
end

# Further Exploration:  Suppose we need a method that retrieves the middle word of a 
# phrase or sentence.  What edge cases need to be considered?  How would you handle those edge
# cases without ignoring them?  Write a method that returns the middle word of a phrase or 
# sentence.  It should handle all of the edge cases you thought of.

# edge cases: 0 words, 1 words, 2 words,  even number words(return both of the middle words)

def middle_word(string)
  words_array = string.split
  array_size = words_array.size

  if array_size == 0
    "empty string entered."
  elsif array_size == 1
    words_array[0]
  elsif array_size == 2
    words_array[0] + ' ' + words_array[1]
  elsif array_size.even?
    half_length = array_size / 2
    words_array[-half_length -1] + ' ' + words_array[-half_length]
  else
    half_length = (array_size / 2.0).ceil
    words_array[-half_length]
  end
end

puts middle_word('')
puts middle_word('cat')
puts middle_word('baseball football')
puts middle_word('The cat ran away into the big bushes')
puts middle_word('life is beautiful')

# empty string entered.
# cat
# baseball football
# away into
# is

# good..
