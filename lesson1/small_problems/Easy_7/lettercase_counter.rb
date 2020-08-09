# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# def letter_case_count(string)
#   characters = string.match(/([a-z]+)([A-Z]+)(\d+)(\W+)/)
#   num_of_lower = characters[1].split('').size
#   num_of_upper = characters[2].split('').size
#   num_of_numbers = characters[3].split('').size
#   num_of_other = characters[4].split('').size
#   end
#   values = [num_of_lower, num_of_upper, num_of_numbers]
# end

# Would work if string contained each type of character being matched.  If one is absent,
# characters gets returned a nil (line 7). Causes error ([] method on nil). Was able to access
# capture groups 'characters[1] etc..'


def letter_case_count(string)
  hash = Hash.new(0)
  string.split('').each do |character|
    if character.match(/[a-z]/)
      hash[:lowercase_letters] += 1
    elsif character.match(/[A-Z]/)
      hash[:uppercase_letters] += 1
    elsif character.match(/\d/)
      hash[:other_char] += 1
    elsif character.match(/\W/)
      hash[:other_char] += 1
    end
  end
  hash
end

p letter_case_count('aaabbbb')
p letter_case_count('Hello There this is a STRing with 23456 five numbers')
p letter_case_count('UPPER lower 1234 %$#@ and count the SPACES   ')

#  {:lowercase_letters=>7}
#  {:uppercase_letters=>5, :lowercase_letters=>33, :other_char=>14}
#  {:uppercase_letters=>11, :other_char=>18, :lowercase_letters=>16}

# works..  LS -->

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count2(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

p letter_case_count2('This IS A STRING containing numbers 4567$#@')

# LS solution #2 -->

def letter_case_count3(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

p letter_case_count3('Another string 345%$$#$  UPPER')

# In the second solution, first initialize an empty counts hash and then use Array#count
# to find the number of occurrences of lowercase, uppercase, and all other characters.
# In the block following the count method invocation, we use the String#=~ method to 
# match each character of the string against a pattern specified by a regular expression.
# The block will return a truthy value if there is a match, nil otherwise.

