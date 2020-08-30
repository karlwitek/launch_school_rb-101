# Write a method that returns true if the word passed in as an argument can be spelled from
# the set of blocks, false otherwise.
# A block can be used only once. Only one letter per block can be used.


BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  blocks = BLOCKS.clone
  found_block = false
  word = word.upcase
  word.chars.each do |letter|
    blocks.any? do |block|
      if block.include?(letter)
        found_block = true
        index = blocks.index(block)
        blocks.delete_at(index)
      else
        found_block = false
      end
      found_block
    end
  end
  found_block
end

puts block_word?('batch') == true
puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true

# true
# true
# true
# true

# LS -->

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

puts block_word?('batch') # true
puts block_word?('butch') # false
puts block_word?('jest') # true

# The first thing to consider is how we should organize our blocks; we want to be able to check
# each block easily to make sure that a valid block word is passed to this method.
# For this solution, we'll use an array of two letter strings.  We'll use this array to check that
# the word passed in doesn't contain two letters from any block. We also want to make sure that no
# block is used more than once. If both of those conditions are met, the we have a valid block
# word.  String#count method is used to count the number of occurences of a collection of 
# characters.  The collection of characters will be each block we want to check.  If we find
# a count of 2 or greater, then we know that either both block characters are contained within
# the string, or that a character from the current block occurs more than once in that string.
# The final item of note is that we must convert the input string to uppercase, just in case it
# contains lowercase letters.

# Further: Did you use a different data structure for organizing your blocks?  Were those blocks
# 2 letter strings or something else?  What method did you use to check if a string had 2 letters
# from a single block?  There are several different possibilities for solving this exercise.

