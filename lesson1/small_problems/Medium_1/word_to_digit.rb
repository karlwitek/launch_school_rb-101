# Write a method that takes a sentence string as input, and returns the same string with any
# sequence of the words 'zero', 'one'...'nine' converted to a string of digits.

HASH = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
         'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def get_words_only(string)
  words_only = string.split.map do |word|
    word.match(/[a-zA-Z]+/).to_s
  end
end

def word_to_digit(string)
  array_with_numbers = []
  final_array = []
  words_only = get_words_only(string)

  words_only.each_with_index do |word, idx|
    if idx == 0
      if HASH.keys.include?(word) && HASH.keys.include?(words_only[idx + 1])
        array_with_numbers << HASH[word]
      else 
        array_with_numbers << word
      end
    elsif idx > 0 && HASH.keys.include?(word)
      if HASH.keys.include?(words_only[idx + 1]) ||
         HASH.keys.include?(words_only[idx - 1])
         array_with_numbers << HASH[word]
      else
        array_with_numbers << word
      end
    else
      array_with_numbers << word
    end
  end
 
  string.split.each_with_index do |word, idx|
    if word[-1] =~ /\W/
      chars = word.match(/[^a-zA-Z]+/).to_s
      appended_chars = array_with_numbers[idx] + chars
      final_array << appended_chars
    else
      final_array << array_with_numbers[idx]
    end
  end
  final_array.join(' ')
end

# puts word_to_digit('Please call me at five five five one two three four. Thanks.') 

# puts word_to_digit('one word two three and some five other six seven')

# puts word_to_digit('one.. two% three$ and a few other six... seven,')

# Please call me at 5 5 5 1 2 3 4. Thanks.
# one word 2 3 and some five other 6 7
# 1.. 2% 3$ and a few other 6... 7,

# LS -->

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9',
}.freeze

def word_to_digit2(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/i, DIGIT_HASH[word])
  end
  words
end

# puts word_to_digit2('One string TWO three. four something five six')

# 1 string 2 3. 4 something 5 6 (solution in Further to account for uppercase, capitalized words)

# This exercise does not require you to consider if the word to convert is part of a 
# sequence of words that should be converted.  My solution is based on a misinterpretation
# of the problem.

# LS --> solution description:
# Within our word_to_digit2 method, we must convert all the words from zero to nine to digits.
# Iterate through all the number words we want to replace, and replace all instances of the word
# with the corresponding digit.
# We use the gsub! method to replace all instances of each number word.  Here, we use a regex to
# look for a word in the string passed in and replace it with the corresponding digit.  The word
# to look for is interpolated into the regex, /\b#{word}\b/.  We use \b to limit the operation to
# complete words, not substrings.  For, instance, if the phrase/sentence passed into the method
# has the word 'freight' in it, we won't replace it.  If we don't use \b, we would convert
# 'freight' to fr8.

# Further: There are many ways to solve this problem and different varieties of it. Suppose,
# for instance, that we also want to replace uppercase and capitalized words.
# ( Added 'i' to regex)
# Can you change your solution so the spaces between consecutive numbers are removed?
# Suppose the the string already contains two or more space separated numbers (not words),
# can you leave those spaces alone, while removing any spaces between numbers that you 
# create?
# Phone numbers: Easy way to format the result to account for phone numbers? Assume any 
# 10 digit number is a phone number. format '(123) 456-7890'.

def word_to_digit3(words)
  new_str = ''
  last_num = false
  words.split.each do |word|
    clean_word = word.match(/\w+/).to_s
    if DIGIT_HASH.keys.include?(clean_word) && last_num == true
      new_str << DIGIT_HASH[clean_word]
    elsif DIGIT_HASH.keys.include?(clean_word) && last_num == false
      new_str << ' ' << DIGIT_HASH[clean_word]
      last_num = true
    else
      new_str << ' ' << word
      last_num = false
    end
  end
  new_str.strip
end

# puts word_to_digit3('one two three')
# puts word_to_digit3('one. two, three,,')
# puts word_to_digit3('word one two another word three')
# puts word_to_digit3('1 2 string three four word five 6')

# 123
# 123
# word 12 another word 3
# 1 2 string 34 word 5 6

# works except that it does not output any punctuation characters.

def word_to_digit4(words)
  new_str = ''
  last_num = false
  words.split.each do |word|
    other_chars = word.match(/[^a-zA-Z0-9]+/).to_s
    clean_word = word.downcase.match(/[a-zA-Z0-9]+/).to_s
    if DIGIT_HASH.keys.include?(clean_word) && last_num == true
      new_str << DIGIT_HASH[clean_word] + other_chars
    elsif DIGIT_HASH.keys.include?(clean_word) && last_num == false
      new_str << ' ' << DIGIT_HASH[clean_word] + other_chars
      last_num = true
    else
      new_str << ' ' << word
      last_num = false
    end
  end
  new_str.strip
end

puts word_to_digit4('One two three')
puts word_to_digit4('one. two, three%')
puts word_to_digit4('one... two#$% three,,,')
puts word_to_digit4('1 2 Dog three four.. five 6. seven eight...')

# 123
# 1.2,3%
# 1...2#$%3,,,
# 1 2 Dog 34..5 6. 78...

# This solution includes punctuation in output. Also added .downcase to allow for capitalized
# or uppercase words to be converted to a number.

def word_to_digit5(words)
  new_str = ''
  last_num = false
  words.split.each do |word|
    other_chars = word.match(/[^a-zA-Z0-9]+/).to_s
    clean_word = word.downcase.match(/[a-zA-Z0-9]+/).to_s
    if DIGIT_HASH.keys.include?(clean_word) && last_num == true
      new_str << DIGIT_HASH[clean_word] + other_chars
    elsif DIGIT_HASH.keys.include?(clean_word) && last_num == false
      new_str << ' ' << DIGIT_HASH[clean_word] + other_chars
      last_num = true
    else
      new_str << ' ' << word
      last_num = false
    end
  end
  a = new_str.match(/\d{10}/).to_s
  if a != ''
    new_str.sub(a, "(#{a[0, 3]}) #{a[3, 3]}-#{a[6, 4]}").strip
  else
    new_str.strip
  end

end

puts word_to_digit5('4235512')
puts word_to_digit5('5034456789')
puts word_to_digit5('Call me at ONE. I have one two orders. My number is
                     five zero three four two THREE FIVE five ONE Two.')

# Formats the phone number if there is one:

# 4235512
# (503) 445-6789
# Call me at 1. I have 12 orders. My number is (503)423-5512.

