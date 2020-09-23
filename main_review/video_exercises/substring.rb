# Given a non-empty string, check if it can be constructed by taking a substring of it and appending
# multiple copies of the substring together.  You may assume the given string consists of lowercase
# English letters only.

# (assuming that a substring is at least 2 char long)
# use length to determine how many times to append substring. check == to string.
# build up substring length in loop upto and including the length of size of half of original string.
# argument - string, return boolean


def consists_of_substrings?(string)
  string_length = string.length.to_f
  index = 0

  ((string_length / 2).ceil).times do
    substring = string[0..index]
    if substring * (string_length /substring.length) == string
      return true
    end
    index += 1
  end
false
end

puts consists_of_substrings?('abab') # true
puts consists_of_substrings?('abcabcabc') # true
puts consists_of_substrings?('aabbaabbaabbaabbaab') # false
puts consists_of_substrings?('aabbaabbaabbaabbaabb') # true
puts consists_of_substrings?('aa') # true
puts consists_of_substrings?('a') # false.. ok for now. assumed substring 2 char or longer.
# Changed code.. now true.

# student solution:

def repeated_substrings(string)
  substrings = []
  1.upto(string.size / 2) do |num|
    if (string.size % num == 0)
      substrings << string[0, num]
    end
  end

  substrings.each do |substring|
    multiplier = string.size / substring.size
    return true if substring * multiplier == string
  end

  false
end

puts repeated_substrings('aabaabaab') # true .  Could extract .upto method and
# block into separate method.  Also, probably should name the block variable
# |num| something different (like length) for clarity.



