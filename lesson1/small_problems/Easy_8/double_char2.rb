# Write a method that takes a string, and returns a new string in which every consonant character
# is doubled.  Vowels, digits, punctuation, and whitespace should not be doubled.

def double_consonants(string)
  result_string = ''
  string.each_char do |char|
    if char =~ /[a-z&&[^aeiou]]/i
      result_string << char << char
    else
      result_string << char
    end
  end
  result_string
end

puts double_consonants('Only the Consonants are Doubled.')

# Onnllyy tthhe CConnssonnannttss arre DDoubblledd.
# LS -->

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

puts double_consonants('This is the Launch School solution.')

# Check each character to see if it is a consonant.  Using an array of lowercase consonants and
# checking to see if it is in that array.  We need to account for uppercase consonants as well,
# so we convert each character to lowercase for the test.



