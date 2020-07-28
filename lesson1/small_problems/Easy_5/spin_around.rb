# Given the method named spin_me that takes a string as an
# argument and returns a string that contains the same words
# but each word's characters are reversed. Given the method's
# implementation, will the returned string be the same object as the 
# one passed in as an argument or a different object?

def spin_me(str)
  puts str.object_id  # 41793880
  str.split.each do |word|
    word.reverse!
  end.join(' ')
end

puts spin_me('hello world')#.object_id  # 41793640

# different objects!  (object_ids are different)
# without ! , the words are outputted in normal order(not reversed)
# .each usually returns the original array, however, we converted
# the string into an array with .split. It is no longer possible to 
# get the original object back again.  Even if were to call 
# str.split.join(' ') , a different object would be returned since
# we are splitting the string and then joining it back to a string.
# (same sequence of characters, but a different object)
# After splitting the string into an array, the array is mutated
# (reverse the words), but when we join the array back to a string, a
# completely new string is returned.

# Lastly, if the argument passed in was an array, not a string, and we
# reversed each word within the array, then the array passed in and
# the array that was returned would be the same object.
#(we are not starting with a string (split) or joining the array)
