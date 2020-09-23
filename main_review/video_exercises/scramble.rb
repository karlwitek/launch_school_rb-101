# Write a method, scramble(str1, str2) that returns true if a portion of str1 characters
# can be rearranged to match str2, otherwise return false.

# examples - 'rkqodlw' and str2 'world' (true)
# str1 'katas' and str2 'steak' (false)
# Only lowercase letters will be used (a-z). No puncuation or digits will be used.

# input - two arguments as strings
# output - boolean
# split str2 into an array. Iterate through the array while calling all? on the array.
# test if every character is included in str1.

def scramble(str1, str2)
  str2.chars.all? { |char| str1.sub!(char, '') }
end

puts scramble('javaass', 'jjss') == false
puts scramble('rkqodlw', 'world') == true
puts scramble('cedewaraaossoqqyt', 'codewars') == true
puts scramble('katas', 'steak') == false
puts scramble('scriptjava', 'javascript') == true
puts scramble('scriptingjava', 'javascript') == true

# true
# true
# true
# true
# true
# true

# student solution (after instructor help)

def scramble(str1, str2)
  str2_chars = str2.chars
  str2_chars.each do |char2|
    return false if str2.count(char2) > str1.count(char2)
  end
  true
end

puts scramble('thrrodwl', 'world') # true
puts scramble('javaass', 'jjss') # false


