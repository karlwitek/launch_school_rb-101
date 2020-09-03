
# require 'open-uri'

# File.open('C:\Users/karlw\RB101\downloads\gutenberg.file', "wb") do |file|
#   file.write open('http://www.gutenberg.org/cache/epub/84/pg84.txt').read
# end
# Typo in line 4. Downloaded anyways.


file_data = File.read('C:\Users\karlw\RB101\downloads\gutenberg.file')

sentences = file_data.split(/(\.)|(\?)|(!)/)

longest_sentence_length = 0
longest_sentence = ''
longest_word = ''
need_punctuation = false
punctuation = ''
longest_paragraph_length = 0
longest_paragraph = ''

sentences.each do |sentence|
  if need_punctuation
    punctuation = sentence
  end
  words = sentence.split
  words.each do |word|
    if word.length > longest_word.length
      longest_word = word
    end
  end

  if words.length > longest_sentence_length
    longest_sentence_length = words.length
    longest_sentence = sentence
    need_punctuation = true
  else
    need_punctuation = false
  end
end

paragraphs = file_data.split(/\n{2,}/)

paragraphs.each do |paragraph|
  words_array = paragraph.split
  if words_array.length > longest_paragraph_length
    longest_paragraph_length = words_array.length
    longest_paragraph = paragraph
  end
end


puts longest_paragraph
puts "===================="
puts "#{longest_paragraph_length} words in the longest paragraph."

puts longest_sentence + punctuation
puts "#{longest_sentence_length} words in the longest sentence."

puts longest_word
puts "#{longest_word.length} letters in the longest word."

# LS -->

# text = File.read('C:\Users\karlw\RB101\downloads\gutenberg.file')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

# First, we read in the entire file. When the file gets read in, it is in the form of one big string
# containing all the file's text.  Next, we use the method String#split. The punctuation marks 
# .,!, and ? mark the end of one sentence and the beginning of another.  Because of that fact, we can
# use these punctuation marks as places to split our string of text into sentences.
# On this third line, we take our array of sentences and use the Enumerable#max_by method to find the
# longest one. We now have the largest sentence.  To get the number of words in that sentence, we use
# the same operations as we did in max_by. In this case we call those methods on largest_sentence
# instead.
# Further:  Our solution fails to print the period at the end of the sentence. Can you write a solution
# that keeps the period printed at the end of each sentence?  What about finding the longest paragraph
# or longest word? How would we go about solving that problem?

