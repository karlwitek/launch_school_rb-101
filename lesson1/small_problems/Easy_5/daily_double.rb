# Write a method that takes a string argument and returns a new string that contains
# the value of the original string with all consecutive duplicate characters 
# collapsed into a single char.  Do not use String#squeeze or #squeeze!

def crunch(string)
  array = string.split('')
  new_array = []
  prev_char = ''
  array.each do |char|
    if char != prev_char
      new_array << char
      prev_char = char
    end
  end
  new_array.join

end

p crunch('hello world')
p crunch('aaaa')
p crunch('hello   worlddd ')
p crunch('')
# works.. LS -->

def crunch2(text)
  index = 0
  crunch_text = ''
  while index <= text.length 
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end
puts crunch2('helllo wooorld')
# Go through each character of the string. Build the return value character by character
# in the string referenced by crunch_text. Use index to track our position in text.
# On each iteration, check whether the current indexed character is equal to the next
# character in text.  If they are the same, do nothing but advance to the next character
# in text. Otherwise, we append the current character to crunch_text and increment the 
# index.

# my solution with .chars

# def crunch3(string)
#   prev_char = ''
#   string.chars.map do |char|
#     if char == prev_char
#       char.delete(char)
#     else
#       prev_char = char
#       char
#     end
#   end
# end

def crunch3(string)
  prev_char = ''
  new_string = ''
  string.each_char do |char|
    if char != prev_char
      new_string << char
      prev_char = char
    end
  end
  new_string
end

p crunch3('helllo')

def crunch4(string)
  prev_char = ''
  new_array = []
  string.chars do |char|
    if char != prev_char
      new_array << char
      prev_char = char
    end
  end
  new_array.join
end

p crunch4('hello worldddd')

# works ..  Probably a better solution possible

def crunch5(string)
  string.gsub(/(.)\1+/, '\1')
end

puts crunch5('all is well')
puts crunch5('aaa abbb ddffgg')



# another solution for previous way of solving

def crunch(str)
  crunching_arr = []
  str.chars.each do |char|
    crunching_arr << char unless char == crunching_arr.last
  end
  crunching_arr.join
end

puts crunch('hhheeelllllo woooorrrrlllldd')
