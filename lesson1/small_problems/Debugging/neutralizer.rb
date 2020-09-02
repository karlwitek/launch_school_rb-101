def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# We wrote a neutralize method that removes negative words from sentences. However, it 
# fails to remove all of them. What exactly happens?

# my answer: The words array is being mutated while it is being iterated over. The .each method iterates
# through the array and grabs each word based on the index of the array. When a word is deleted,
# the index of the next word is not the same as when the iteration started.
# 'boring' essentially gets skipped.  'boring' starts out as index 2. When 'dull' (index 1) is deleted,
# 'boring' becomes the element as index 1.  Since .each was already called for index 1, 'boring' is 
# skipped over.  .each goes on to index 2 which is now 'cards' (formerly index 3)

# LS -->
# Can inspect word and words for each iteration with the following code:

def neutralize(sentence)
  words = sentence.split(' ')
  words.each_with_index do |word, index|
    p index
    p word
    p words
    words.delete(word) if negative?(word)
    p words
  end

  words.join(' ')
end

# puts neutralize('These dull boring cards are part of a chaotic board game.')

# Nothing happens at index 0. When the iteration is at index 1, the element is 'dull'. Since it
# counts as negative, it is deleted from the array.  As a consequence, each subsequent word is
# shifted one position to the left. In particular, the word that was previously at position 2,
# 'boring', is now at position 1. So in the next step, when the iteration is at index 2, it 
# finds 'cards'. Our mutation of the array caused it to skip 'boring'.

# Solution ( LS )

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')

# While iterating over an array, avoid mutating it from within the block. Instead you
# can use the Array methods select or reject/reject!.

# Further: Note that we use reject! here, which does not mutate the array while iterating
# over it.  But the way reject! is implemented, it takes special care to avoid the problem
# we had in our code.  We could re-implement it in Ruby as follows:

def mutating_reject(array)
  i = 0
  loop do
    break if i == array.length

    if yield(array[i]) # if array[i] meets the condition checked by the block
      array.delete_at(i)
    else
      i += 1
    end
  end

  array
end

# Read if yield(array[i]) as 'if array[i] meets the condition checked by the block', you
# will learn about using blocks in methods in course RB130.  The important point is that
# i is not increased when the condition is met and the element is removed. This prevents
# the loop from skipping over elements like what happened in our case.


