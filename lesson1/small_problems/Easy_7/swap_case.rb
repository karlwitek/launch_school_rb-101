# Write a method that takes a string as an argument and returns a new string in which every
# uppercase letter is replaced by its lowercase version, and every lowercase letter by its
# uppercase version.  All other characters should be unchanged.
# You may not use String#swapcase.

LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def swap_case(string)
  swapped_split_array = string.split.map do |word|
    letters_array = word.chars.map do |char|
      if LOWER_CASE.include?(char)
        index = LOWER_CASE.index(char)
        char = UPPER_CASE[index]
      elsif UPPER_CASE.include?(char)
        index = UPPER_CASE.index(char)
        char = LOWER_CASE[index]
      else
        char
      end
    end
  end
  word_array = swapped_split_array.map do |arr|
    arr.join
  end
  word_array.join(' ')
end

p swap_case('aaa BBB')
p swap_case('Tonight on XYZ-TV')
p swap_case('34aaBB a STRING TO swap case')

# "AAA bbb"
# "tONIGHT ON xyz-tv"
# "34AAbb A string to SWAP CASE"

# works .. Try again..

def swapcase(string)
  changed_words = []
  changed_letters = []
  string.split.each do |word|
    word.chars.each do |char|
      if LOWER_CASE.include?(char)
        index = LOWER_CASE.index(char)
        changed_letters << UPPER_CASE[index]
      elsif UPPER_CASE.include?(char)
        index = UPPER_CASE.index(char)
        changed_letters << LOWER_CASE[index]
      elsif char == ' '
        puts 'space!'
        changed_letters << " "
      else
        changed_letters << char
      end
    end
  end
  changed_letters
end

# p swapcase('aaa')
# p swapcase('aaa bbb ')
# Not correct...

# LS -->  
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

puts swapcase('This IS THE LAUNCH school solution')

# Iterate through each character in the string passed into swapcase. If the character is 
# lowercase (/[a-z]/), we make it uppercase. vice versa if uppercase. For all other 
# characters, we do nothing.  Each character is then mapped to a new array and assigned to
# characters. Finally, we join characters together into a new String and return that value.

