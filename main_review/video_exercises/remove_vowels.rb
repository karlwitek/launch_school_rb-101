# Write a method that takes an array of strings, and returns an array of the same string values,
# except with the vowels removed.

def remove_vowels(array_of_strings)
  vowels = 'aeiou'
  consonant_array = array_of_strings.map do |string|
    string.chars.delete_if { |char| vowels.include?(char) }.join
  end
  consonant_array.join(' ')
end

puts remove_vowels(['apple', 'peach', 'pear']) # ppl pch pr



