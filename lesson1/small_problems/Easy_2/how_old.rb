# Build a program that randomly generates and prints Teddy's age.  To get
# the age, you should generate a random number between 20 and 200.

puts "Teddy is #{rand(20..200)} years old!"

# works.  LS solution below

age = rand(20..200)
puts "Teddy is #{age} years old!"

## Further Exploration

puts "Enter your name "
name = gets.chomp
if name == ''
  name = "Teddy"
end

puts "#{name} is #{age} years old."
## Teddy is used if a name is not entered.  Research if there
# is a better way to code this.




