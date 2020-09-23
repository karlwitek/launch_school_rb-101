# 9/23/20  Given two strings, find out if there is a substring that appears in both strings.  Return
# true if you find a substring that appears in both strings, false otherwise.
# substrings are more than one letter long for this problem.

# input - two arguments, which are both strings
# output - boolean value based on if there is at least one substring in each string.

# choose the shortest string to iterate through and find all possible substrings of two
# letters or more. (1 loop that creates 2 char long substrings..)
# call #include? on longer string with all substrings as an argument
# Do not have to find the longest substring so can make all substrings two char long.
# Put all substrings into an array. Call #any? on array with block checking for other 
# string.include?(element)
# allow for case insensitive comparisons

def substring_test(str1, str2)
  string = str1.size > str2.size ? str2 : str1
  longer_string = str1.size > str2.size ? str1 : str2
  substring_array = []
  (0..(string.length - 2)).each do |index|
    substring_array << string[index, 2]
  end
  substring_array.any? { |sub| longer_string.downcase.include?(sub.downcase) }
end

puts substring_test('elephant', 'longerword') # false
puts substring_test('home', 'something') # true
puts substring_test('HOME', 'something') # true
puts substring_test('longerword', 'sword') # true
puts substring_test('', 'something') # false

# student solution:

def substring_test(str1, str2)
  str1_chars = str1.downcase.chars
  str2_chars = str2.downcase.chars
  str1_chars.each_with_index do |char1, idx1|
    str2_chars.each_with_index do |char2, idx2|
      return true if char1 == char2 && str1_chars[idx1 + 1] == str2_chars[idx2 + 1] &&
      idx1 != (str1_chars.size - 1)
    end
  end
  false
end

p substring_test('home', 'something') # true
