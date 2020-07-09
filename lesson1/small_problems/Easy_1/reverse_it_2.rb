# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with words that contain 5 or more
# characters reversed.  Each string will consist of only letters and spaces
# Spaces only included when more than one word is present.

def word_reverse(string)
  new_arr = []
  arr = string.split
  arr.each do |word|
    if word.length > 4
      new_arr.push(word.reverse)
    else
      new_arr.push(word)
    end
  end
  new_arr.join(' ')
end

puts word_reverse('my cat is dangerous')
puts word_reverse('hello my name is Karl Witek')

# Works!   LS solution below

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('hello again this is LS solution')

## Uses .size instead of .length.  Destructive .reverse! ..
#  simpler conditional 
# calls .each on string.split ( .split returns an array )



