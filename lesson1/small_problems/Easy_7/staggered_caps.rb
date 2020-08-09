# Write a method that takes a String as an argument, and returns a new String that contains
# the original value using a staggered capitalization scheme in which every other character 
# is capitalized, and the remaining characters are lowercase.  Characters that are not letters
# should not be changed, but count as characters when switching between upper and lowercase.

def staggered_caps(string)
  index = 0
  characters = string.chars.map do |char|
    if index.even? && char =~ /[a-z]/
      index += 1
      char.upcase
    elsif index.odd? && char =~ /[A-Z]/
      index += 1
      char.downcase
    else
      index += 1
      char
    end
  end
  characters.join
end

puts staggered_caps('hello world')
puts staggered_caps('HEllo There, some nUMbers 3456')

#  HeLlO WoRlD
#  HeLlO ThErE, sOmE NuMbErS 3456

# works.. LS -->

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

puts staggered_case('Another launch school solution 456')

# This solution simply iterates through the String while building another String one character
# at a time, either uppercasing or lowercasing each character as needed.  Note that we never
# need to actually test whether a character is upper or lowercase, or even whether it is
# alphabetic: the upcase and downcase methods handle this for us.
# To keep track of whether we want to upcase or downcase each character, we define a boolean
# variable (need_upper) that starts outs as true.  Each time we process a character, we upcase
# it or downcase it based on the current state of need_upper.  We then toggle need_upper from
# true to false or false to true using need_upper = !need_upper.

# Further Exploration:  Can you modify this method so the caller can request that the first 
# character be downcased rather than upcased?  If the first character is downcased, then the
# second character should be upcased, and so on.

def staggered_case(string, value = true)
  result = ''
  need_upper = value
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

puts staggered_case('further exploration')
puts staggered_case('further exploration', false)

# FuRtHeR ExPlOrAtIoN
# fUrThEr eXpLoRaTiOn

# Good..
