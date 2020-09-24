# Find the length of the longest substring in the given string that is the same in reverse.
# Example: 'I like racecars that go fast' , the substring 'racecar' length would be 7.
# 'a' => 1
# 'aab' => 2
# 'abcde' => 1
# 'zzbaabcd' => 4
# '' => 0

# input - string (one or more words)
# output - integer representing the length of the longest substring that is a palindrome.
# numbers may be included in string
# Data Structures - store all substrings that are palindromes in an array
# Split string into an array (of one or more strings)

# A - call #split on string to put into an array of one or more strings
# initialize an array to contain strings (sub-strings) that are palindromes
# iterate through array of strings while iterating over each string (nested iteration)
# and breaking up each string into all possible substrings
# test each substring to determine if it is a palindrome (note: one letter can be a palindrome)
# use separate method to check; if it is a palindrome, add to array of palindromes.
# find longest palindrome in array of palindromes

def is_palindrome?(substring)
  !!(substring.reverse == substring)
end

def longest_palindrome(string)
  array_of_palindromes = []
  return 0 if string == ''

  string.split.each do |word|
    for start_idx in 0..word.size - 1
      for end_idx in start_idx..(word.size - 1)
        sub_arr = word[start_idx..end_idx]
        if is_palindrome?(sub_arr)
          array_of_palindromes << sub_arr
        end
      end
    end
  end
  array_of_palindromes.max_by { |sub_arr| sub_arr.size }.size
end

p longest_palindrome('abba word ') # 4
p longest_palindrome('a b c d e') # 1
p longest_palindrome('')
