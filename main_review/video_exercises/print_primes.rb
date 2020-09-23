# Write a method that takes two numbers as arguments.  It should print all prime numbers between
# the two numbers.  Don't use Ruby's Prime class.

# define method to test if number is prime.

def is_prime?(number)
  (2...number).each do |num|
  return false if number % num == 0
  end
  true
end

puts is_prime?(7) # true
puts is_prime?(8) # false

# main method 

def only_primes(starting_num, ending_num)
  all_values = (starting_num..ending_num).to_a

  # all_values.select { |number| is_prime?(number) }.join(', ')
  (starting_num..ending_num).select { |number| is_prime?(number) }.join(', ')
end

puts only_primes(2, 12) # 2, 3, 5, 7, 11
puts only_primes(5, 67) # 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67


