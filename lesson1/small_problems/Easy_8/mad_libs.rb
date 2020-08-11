# Write a program that prompts for a noun, a verb, an adverb, and an adjective and injects those
# into a story that you create.

def prompt(msg)
  puts "Enter #{msg}: "
end

prompt('a noun')
noun = gets.chomp
prompt('a verb')
verb = gets.chomp
prompt('an adjective')
adjective = gets.chomp
prompt('an adverb')
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# A bit more complicated option would be to read in a text file and then use String#format
# to interpolate our noun, verb, adjective and adverb into this file.

