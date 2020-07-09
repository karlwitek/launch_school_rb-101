# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.

hash = { 1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th' }
array_of_five = []
i = 1
5.times do 
  puts "Enter the #{i}#{hash[i]} number: "
  number = gets.to_i
  array_of_five << number
  i += 1
end

puts "Enter the 6th number: "
sixth_num = gets.to_i
contained = false
array_of_five.each do |n|
  if n == sixth_num
    contained = true
  end
end
if contained
  puts "The number #{sixth_num} appears in #{array_of_five} "
else
  puts "The number #{sixth_num} does not appear in #{array_of_five} "
end
## Works.  LS solution below

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers} "
else 
  puts "The number #{last_number} does not appear in #{numbers} "
end

## Now , use .include? in my code

hash = { 1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th' }
array_of_five = []
i = 1
5.times do 
  puts "Enter the #{i}#{hash[i]} number: "
  number = gets.to_i
  array_of_five << number
  i += 1
end

puts "Enter the 6th number: "
sixth_num = gets.to_i

if array_of_five.include?(sixth_num)
  puts "The number #{sixth_num} appears in #{array_of_five} "
else
  puts "The number #{sixth_num} does not appear in #{array_of_five} "
end

# Better with .include?

