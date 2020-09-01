def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

# p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# The reverse_sentence method should return a new string with the words of its
# arguments in reverse order, without using any of Ruby's built-in reverse methods.
# The code raises an error. Change it so that it behaves as expected.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'  # Now correct.

# Changed words[i] to [words[i]].  Now adding (concatenating)? two arrays together, instead of
# a string and an array.

# LS -->
# same change:  Both String and Array have a + method. The former concatenates two strings,
# the latter concatenates two arrays. On line 7 we mix these two types: words[i] is a string
# and reversed_words is an array.  Recall that words[i] + reversed_words is syntactic sugar
# for words[i].+(reversed_words) ; we invoked String#+ with an array as an argument, causing
# a TypeError to be raised.  To resolve, turn words[i] into a one-element arrray.
# Alternatively, we could also use the Array#unshift method to prepend the string object onto
# the front of our array:

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

