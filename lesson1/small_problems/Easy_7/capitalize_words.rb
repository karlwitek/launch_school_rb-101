# Write a method that takes a single string argument and returns a new string that contains
# the original value of the argument with the first character of every word capitalized and
# all other letters lowercase.  You may assume that words are any sequence of non-blank 
# characters.

def capitalize_words(string)
  arr = string.split.map do |word|
    word.capitalize
  end
  arr.join(' ')
end

puts capitalize_words('hello there this is a string')

# works.. LS -->

def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

puts word_cap('hello again this is launch school solution one')
# very similar to my solution.  LS #2 -->

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

# In the second solution, (&:method_name) is shorthand notation for { |item| item.method_name }
# Thus, &:capitalize translates to:
# do |word|
#   word.capitalize
# end
# We can use this shorthand syntax with any method that has no required arguments.

# Further Exploration:  Ruby provides the String#capitalize method to capitalize
# strings. How would you solve this problem without this method? Try to come up with
# at least two solutions..

LOWER_ARRAY = ('a'..'z').to_a
UPPER_ARRAY = ('A'..'Z').to_a

def cap_first_letter(string)
  arr = string.split.map do |word|
      if LOWER_ARRAY.include?(word[0])
        index = LOWER_ARRAY.index(word[0])
        word[0] = UPPER_ARRAY[index]
        word
      else
        word
      end
    end
    arr.join(' ')
end

puts cap_first_letter('hello there')
puts cap_first_letter('words with lower Case lETTERS')

# WORKS ..


def cap_first_letter(string)
  arr = string.split.map do |word|
      if LOWER_ARRAY.include?(word[0])
        index = LOWER_ARRAY.index(word[0])
        word.sub!(word[0], UPPER_ARRAY[index])
        word
      else
        word
      end
    end
    arr.join(' ')
end

puts cap_first_letter('again with sub method')
puts cap_first_letter('apple orange small lETTERS Capitalize')

# also works.  Needed to store the return value of word.sub to be able to return 'capped_word'
# (capitalized word).  word.sub! without storing the return value would of worked as well.
# (changed it back to word.sub!)




