# Write a program that will ask for input of a word or multiple
# words and give back the number of characters. Spaces do 
# not count as a character.

puts "Enter a word or phrase: "
input = gets.chomp

words = input.split
characters = 0
words.each do |word|
  characters += word.length
end

puts "There are #{characters} characters in #{input} "
#  works.  LS below

print "Please write word or multiple words: "
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

## Uses String#delete to return a new string with all the spaces
# removed from it.  The original string stored in 'input' is
# left intact.

# Also used escape char to include "" in output.



