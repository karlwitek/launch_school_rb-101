# Write a program that asks the user ot enter an integer
# greater than 0, then asks if the user wants to determine
# the sum or product of all numbers between 1 and the 
# entered integer.

puts 'Enter a positive number '
number = gets.to_i

puts 'Would you like to see the sum or product of all
numbers 1 - (your number) enter "s" or "p" ?'
answer = gets.chomp

array_of_numbers = (1..number).to_a

sum = array_of_numbers.sum
product = 1

if answer == 's'
  puts "The sum of all number is #{sum} "
elsif
  answer == 'p'
  array_of_numbers.each do |num|
    product *= num
  end
  puts "The product of all numbers is #{product} "
else
  puts "Please enter 's' or 'p' "
end
# works .  Need to put into a loop to give the user
# another chance to enter 's' or 'p'.  Not done here.

# LS below

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts "Enter an integer > 0 "
number = gets.chomp.to_i

puts "Enter 's' to get the sum, 'p' to get the product "
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number}
  is #{sum} "
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of all the integers between 1 and #{number}
  is #{product} "
else
  puts "Error, unknown operation"
end

# Usually would validate user input. Not done here.
# Now. Try to use Enumerable#inject method to compute
# the sum and product of an array.

## copied from docs:

# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
longest    #=> "sheep"

## copied solution to use .inject

def compute_sum(number)
  sum = (0..number).inject(:+)
  sum
end

def compute_product(number)
  product = (1..number).inject(:*)
  product
end

puts "Enter an integer > 0 "
number = gets.chomp.to_i

puts "Enter 's' to get the sum, 'p' to get the product "
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number}
  is #{sum} "
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of all the integers between 1 and #{number}
  is #{product} "
else
  puts "Error, unknown operation"
end
