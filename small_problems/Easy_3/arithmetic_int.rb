# Write a program that prompts the user for 2 positive integers.
# Print the results of 6 operations (+, -, *, /, %, **)

h = {1 => '+', 2 => '-', 3 => '*', 4 => '/', 5 => '%', 6 => '**' }

puts "Enter the first number: "
x = gets.to_i
puts "Enter the second number: "
y = gets.to_i
h2 = { 1 => (x + y), 2 => (x - y), 3 => (x * y), 4 => (x / y), 5 => (x % y), 6 => (x ** y) }

i = 1

6.times do
  puts "#{x} #{h[i]} #{y} = #{h2[i]}"
  i += 1
end
#  Works... LS below

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number: ")
first_number = gets.chomp.to_i
prompt("Enter the second number: ")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

# Some edge cases exist.  Careful not to have a second number
# that is zero.
# What if used floats instead of integers?

h = {1 => '+', 2 => '-', 3 => '*', 4 => '/', 5 => '%', 6 => '**' }

puts "Enter the first number: "
x = gets.to_f
puts "Enter the second number: "
y = gets.to_f
h2 = { 1 => (x + y), 2 => (x - y), 3 => (x * y), 4 => (x / y), 5 => (x % y), 6 => (x ** y) }

i = 1
# add formatting after = sign
6.times do
  puts "#{x} #{h[i]} #{y} = #{format('%.2f', h2[i])}"
  i += 1
end
