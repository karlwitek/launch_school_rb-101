# Write a program that will ask for user's name.  The 
# program will then greet the user.  If the user writes
# "name!", then the computer yells back (CAPS + MSG.)

puts "Please enter your name: "
name = gets.chomp

if name.split('')[-1] == "!"
  name = name.chop!
  greeting = "hello #{name} Don't yell at me."
  puts greeting.upcase
else
  puts "Hello, #{name}"
end
## works.  LS below

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Test the last character on the string, no need to 
# .split into an array.
# If the last character is an '!', we chop the ! from
# the name and print the shouting version of the 
# greeting.
# .chomp conditionally removes the tail end of a string
# (defaulting to a new line)
# .chop removes the last character , unconditionally
# Both chomp and chop can implement ! (destructive)
# to modify the string directly. not used here.

# Further Exploration . Use .chomp!, .chop!
print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
# not sure if correct
