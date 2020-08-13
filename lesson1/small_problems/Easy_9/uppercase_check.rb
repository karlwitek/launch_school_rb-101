# Write a method that takes a string argument, and returns true if all of the alphabetic
# characters inside the string are uppercase, false otherwise.  Characters that are
# not alphabetic should be ignored.

def uppercase?(string)
  string.chars.each do |char|
    if char =~ /[a-z]/
      return false
    end
  end
  true
end

p uppercase?('ALL UPPPER')
p uppercase?('SOME lower')
p uppercase?('34 UPPER AGAIN  %#$#')

# true
# false
# true

# LS --> 

def uppercase?(string)
  string == string.upcase
end

puts uppercase?('123 &^%HELLO')
puts uppercase?('')
puts uppercase?('LOWEr')

# The easiest way to solve this problem is to realize that the condition 'all of the 
# alphabetic characters are uppercase' is true only if the string is not altered by 
# converting it to all uppercase.  Thus, all we need to do is compare string with
# string.upcase.
# Further: In the LS method, we show that uppercase? should return true if the 
# argument is an empty string.  Would it make sense to return false instead? 
# Why or why not?

# I think it would make sense to return false instead.  The problem states 'if all
# alphabetic characters are uppercase'.  Since there aren't any letters at all, I
# think it should return false..


