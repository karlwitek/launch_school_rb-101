# Write a method that returns one UUID when called with no
# parameters.  Each UUID consists of 32 hexidecimal characters,
# and is typically broken into 5 sections (8-4-4-4-12) and
# represented as a string.
# example:   "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

puts generate_UUID

# The key to this solution is having the sections array containing integers representing
# the number of characters in each section.  During each iteration through the array, 
# within the block we can call the times method on the integer for that iteration and 
# thus build up the UUID character by character.
# Actual use would be to implement the SecureRandom#uuid method in Ruby's standard 
# library.

