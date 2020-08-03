# Using the each method, write some code to output all of the vowels from
# the strings.


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |key, value|
#   value.each { |word| print word.match(/[aeiou]+/)}
# end
# works.  'print' outputs on same line. 'p' ouputs Matchdata objects.
# puts outputs one letter per line.
# Again without regex

hsh.each do |key, value|
  value.each do |string|
    string.chars do |letter|
      if 'aeiou'.include?(letter)
        print letter
      end
    end
  end
end

# works.. string.chars and string.chars.each does the same thing. .?
# LS -->

vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end

# First iterate through the hash to access the values(the arrays) and then iterate through
# each array to access each string. String#chars can be called within the block to return
# an array of characters for that string in that iteration, this array of characters can 
# itself then be iterated through and puts called if on its iteration the character meets
# a condition.  Could have used Hash#values here since the keys were never accessed.
