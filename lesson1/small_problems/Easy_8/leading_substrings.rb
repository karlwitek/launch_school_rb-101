# Write a method that returns a list of all substrings of a string that start at the beginning of the
# original string.  The return value should be arranged in order from shortest to longest substring.

def leading_substrings(string)
  result = []
  array = string.chars
  (array.size).times do |sub_num|
    result << array[0..sub_num]
  end
  result
end

p leading_substrings('abcde')

# [["a"], ["a", "b"], ["a", "b", "c"], ["a", "b", "c", "d"], ["a", "b", "c", "d", "e"]

# if used .slice, would need: array.slice(0, sub_num + 1) or array[0, sub_num + 1]
# not correct. Output is nested arrays. Want an array of sub-strings.  LS -->

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

p leading_substrings('ruby')

# modify my solution

def leading_substrings(string)
  result = []
  (string.size).times do |sub_num|
    result << string[0..sub_num]
  end
  result
end

p leading_substrings('name')

# ["n", "na", "nam", "name"]
# works. Previous solution was using slice on an array, returning sub-arrays.

# string[0..index] returns a substring of string that starts at position 0, and ends at 
# position index.


