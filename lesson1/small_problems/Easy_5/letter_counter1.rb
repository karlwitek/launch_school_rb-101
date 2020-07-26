# Write a method that takes a string with one or more space
# separated words and returns a hash that shows the number of words
# of different sizes.  Words consist of any string of characters that
# do not include a space.

def letter_counter(string)
  hash = {}
  string.split.each do |word|
    if hash.has_key?(word.size)
      hash[word.size] += 1
    else 
      hash[word.size] = 1
    end
  end
  hash
end
p letter_counter('this is a string')
p letter_counter('a string with six words plus some others')
# works. try with each_with_object

def letter_counter2(string)
  string.split.each_with_object({}) do | word, hash| # word (calling on array)
    if hash.has_key?(word.size) 
      hash[word.size] += 1
    else
      hash[word.size] = 1
    end
  end
end

p letter_counter2('a string')
# works.. LS -->

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
p word_sizes('launch school solution is this example')

# Obtain a list of words (split).  Increment the count for words of the same size:
# if we initialize counts as counts = {}, we will get an exception the first time
# counts[word.size] += 1 is executed.  counts[word.size] would return nil. nil 
# cannot be added to 1. To fix: use the default value form of initializing counts:
# counts = Hash.new(0).  This forces any references to non-existing keys in counts
# to return 0.  Hash::new(0)   (initialized a hash with a default value)


