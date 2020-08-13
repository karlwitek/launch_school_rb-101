# Write a method that takes a string as an argument, and returns an Arry that contains every
# word from the string, to which you have appended a space and the word length.
# You may assume that words in the string are separated by exactly one space, and that
# any substring of non-space characters is a word.

def word_length(string)
  result = []
  string.split.each do |word|
    #result << word + ' ' + word.length.to_s
    result << "#{word} #{word.length}"
  end
  result
end

p word_length('an apple a day, keeps the doctor away')

# ["an 2", "apple 5", "a 1", "day, 4", "keeps 5", "the 3", "doctor 6", "away 4"]
# commented out line (line 9)

# ["an 2", "apple 5", "a 1", "day, 4", "keeps 5", "the 3", "doctor 6", "away 4"]
# line 10

# LS -->

def word_lengths(string)
  words = string.split

  words.map do |word|
    word + ' ' + word.length.to_s
  end
end

p word_lengths('this is the launch school solution')

# We store the array in a words variable.  Then we need to modify each word separately, that
# is to transform our words array.  This is a good use case for Array#map. map will return
# a new array, of the same size as the caller array, with each element replaced according to the
# return value of the block.  The length will be an integer and needs to be converted to a 
# string before concatenation.
# Could also use string interpolation and method chaining to solve this problem in one line:
# string.split.map { |word| "#{word} #{word.length}" }


