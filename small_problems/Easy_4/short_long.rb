# Write a method that takes two strings as arguments,
# determines the longest of the two strings, and then
# returns the result of concatenating the shorter string
#, the longer string and the shorter once again. You may
# assume the strings are different lengths.

def short_long(str1, str2)
  first = false
  if str1.length < str2.length
    first = true
  end
  if first
    puts "#{str1}#{str2}#{str1}"
  else
    puts "#{str2}#{str1}#{str2}"
  end
end

short_long('cat', 'horse')
short_long('longestword', 'shortone')
# works  LS below

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('hello', 'everyone')
# Could of used a ternary operator instead of if/else/end
# Could of used string interpolation rather than 
# concatenation.  Not necessary for this exercise.

# Another solution, using an array.

def shorter(str1, str2)
  arr = [str1, str2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end

puts shorter('hi', 'there')

# The if/else/end solution is clearer.



