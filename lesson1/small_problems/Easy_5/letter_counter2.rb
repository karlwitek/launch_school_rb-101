# Modify the word_sizes method to exclude non-letters when 
# determining word size.

def word_sizes(words_string)
  counts = Hash.new(0)
  clean_words = words_string.split.map do |word|
    word.gsub(/[^a-z]/i, '')
  end
  clean_words.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('string')
p word_sizes("it's a string")
p word_sizes("it's a @$%string")
# works. LS -->

def word_sizes2(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes2("it's still a string$%^")

