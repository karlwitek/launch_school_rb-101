# Write a method that returns a list of all substrings of a string.  The returned list should be
# ordered by where in the string the substring begins. (Position 0 - first, etc..).  Since 
# multiple substrings will occur at each position, the substrings at a given position should be
# returned in order from shortest to longest.  You may (and should) use the leading_substrings method
# you wrote in the previous exercise.  

def leading_substrings(string)
  result = []
  (string.size).times do |sub_num|
    result << string[0..sub_num]
  end
  result
end

# p leading_substrings('apple')

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


p all_substrings('abcde')

#  ["a, ab, abc, abcd, abcde", "b, bc, bcd, bcde", "c, cd, cde", "d, de", "e"]

# works.  LS -->

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('efghi')

# The solution boils down to repeatedly running leading_substrings on increasingly smaller
# substrings of string, starting with the first character, then the 2nd character, and so on.
# The results are concatenated to our results Array which is subsequently returned to the
# caller.  Our leading_substrings method returns substrings in order from shortest to longest,
# and substrings itself works from left to right in the string.  Our results are thus arranged
# in the desired sequence.




