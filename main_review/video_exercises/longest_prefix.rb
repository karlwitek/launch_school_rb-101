# Write a method to find the longest common prefix string among an array of strings.
# If there is no common prefix, return an empty string.

# input- array  ['flower', 'flow', 'flight']
# output - 'fl'
# input - ['dog', 'racecar', 'car']
# output - ''
# All given inputs are lowercase letters a-z

# data - testing characters in each string while iterating over array of strings
# algorithm - 'pull out' first string for comparison against other strings.
# iterate through remaining elements in array. use #all? method with conditional stmt.
# if all? returns true, build up new string that will be the prefix.

def longest_prefix(array)
  first_string = array.shift
  prefix = ''
  index = 0
  
  while true
    if array.all? { |string| string[index] == first_string[index]}
      prefix << first_string[index]
    else
      break
    end
    index += 1
  end
  prefix
end

p longest_prefix(['flower', 'flow', 'flight'])
p longest_prefix(['dog', 'cat', 'horse'])
p longest_prefix(['aaabbword', 'aaabbanotherword', 'aaabbthirdword'])
p longest_prefix(['rrrtt', 'rrrtt', 'rrr']) # "rrr"

# "fl"
# ""
# "aaabb"

# student solution:

def common_prefix(array)
  result = []
  max_index = array.min_by { |string| string.size }.size
  (0...max_index).each do |index|
    current_char = array[0][index]
    if array.all? { |str| str[index] == current_char }
      result << current_char
    else
      return result.join('')
    end
  end
  result.join('')
end

p common_prefix(['flow', 'flee', 'flight']) # "fl"
p common_prefix(['dog', 'cat', 'horse']) # ""


