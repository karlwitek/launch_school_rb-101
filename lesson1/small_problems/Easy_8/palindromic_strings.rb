# Write a method that returns a list of all substrings of a string that are palindromic.  That is,
# each substring must consist of the same sequence of characters forwards as it does backwards.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.  Use the substrings method from the 
# previous exercise.

def is_palindrome?(string)
  !!(string == string.reverse)
end

def leading_substrings(string)
  result = []
  (string.size).times do |sub_num|
    result << string[0..sub_num]
  end
  result
end

# my solution from previous exercise (including leading_substrings)

def all_substrings(string)
  starting_index = 0
  result_string = []
  loop do

    break if starting_index == string.size
    shortened_string = string[starting_index..string.size]
    starting_index += 1
    result_string << leading_substrings(shortened_string).join(', ')
  end
  result_string
end

def all_palindromes(string)
  array_substrings = all_substrings(string)
  array_palidromes = []
  array_substrings.each do |sub_string|
    single_string = sub_string.split(', ')
    single_string.each do |single_string|
      if single_string.size > 1 && is_palindrome?(single_string)
        array_palidromes << single_string
      end
    end
  end
  array_palidromes
end

# p all_palindromes('a')
# p all_palindromes('abba')
# p all_palindromes('Abba')
# p all_palindromes('hello-madam-did-madam-goodbye')

# []
# ["abba", "bb"]
# ["bb"]
# ["ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada", "adam-did-mada",
#  "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did", "-madam-", "madam", "ada", "oo"]

# works... LS -->

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

# p palindromes('abba')

# Using methods from previous exercises.  Use a helper method, palindrome?, which includes verifying
# the size of the string as well as its reversibility.  The main method just calls substrings from
# the previous exercise, and then constructs a list of all the return values that are palindromic.

# Further:  Can you modify this method(and/or its predecessors) to ignore non-alphanumeric characters
# and case?

# Going to modify LS methods:

def palindrome?(string)
  string.downcase == string.downcase.reverse && string.size > 1
end

def palindromes(string)
  all_substrings_array = substrings(string)
  clean_substrings = only_alphanumeric(all_substrings_array)
  results = []
  clean_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def only_alphanumeric(array_substrings)
  b = array_substrings.map do |substring|
    substring.chars.map do |char|
      if char =~ /[a-zA-Z\d]/
        char
      end
    end
  end
  final = b.map do |elem|
    elem.compact.join
  end
  final
end

# p only_alphanumeric(['aa', 'a23', 'a#$% bd'])

# p palindromes('abba')
# p palindromes('hello-madam-did-madam-goodbye')
p palindromes('AaBBBaa') #  ["Aa", "AaBBBaa", "aBBBa", "BB", "BBB", "BB", "aa"]
p palindromes('a%$bb#a') #  ["abba", "bb", "bb", "bb", "bb", "bb", "bb"]


# The problem states that you should ignore
# non-alphanumeric characters, not delete them.  Going to start a new file.  Possibly modify
# palindrome? method to test 'cleaned substrings' but use original substrings.
