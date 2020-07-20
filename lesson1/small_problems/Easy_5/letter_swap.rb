# Write a method that takes a string of words and returns
# a string with the first and last letters of each word swapped.
# May assume that every word contains at least one letter and
# the string will contain at least one word. Also assume
# each string contains nothing but words and spaces.

def swap(string)
  new_array = []
  array_of_words = string.split
  array_of_words.map do |word|
    letters = word.split('')
    first = letters.shift
    last = letters.pop
    letters.unshift(last)
    letters << first
    new_array << letters.join
  end
  new_array.join(' ')
end

puts swap('hello world')
puts swap('this string is changed')
puts swap('hello') == 'oellh' # true
# works.. LS -->

def swap_first_last_character(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap2(words)
  result = words.split.map do |word|
    swap_first_last_character(word)
  end
  result.join(' ')
end

puts swap2('Launch School solution here')

# Swapping the first and last character is done with this idiom:
# a, b = b, a   It effectively creates a temporary array with the 
# values from the right side ([b, a]), and then assigns each element
# from that array into the corresponding named variable.
# a = b b is value from pos 0 of temp array (original value of b)
# b = a a is value from pos 1 of temp array (original value of a)
# equivalent to:
# temporary = [b, a]
# a = temporary[0]
# b = temporary[1]
# Multiple-Assignment syntax. 
# Further Exploration ( variation of parameters)

def swap_characters(a, b)
  a, b = b, a
end

def swap3(words)
  result = words.split.map do |word|
    swap_characters(word[0], word[-1])
  end
  result.join(' ')
end

puts swap3('Further Exploration')
# does not work the same. The values stored in result
# are only the first and last charaters, not the complete
# word.


