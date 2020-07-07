# Write a method that searches for all multiples of 3 or 5 that lie
# between 1 and some number, and then computes the sum of those
# multiples.  May assume the number (argument is an integer > 1)

def multiples(number)
  number_array = Array(1..number)
  multiples_array = []

  number_array.each do |num|
    if num % 3 == 0 || num % 5 == 0
      multiples_array << num
    end
  end
  multiples_array.sum
end


  puts multiples(5) == 8
  puts multiples(6) == 14

  puts multiples(21)

  # works. LS below

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

puts '=============='
puts multisum(5) == 8
puts multisum(6) == 14
puts multisum(20)

# Uses mulitple? method that returns true if the given number
# is an exact multiple of divisor, false if not.  Makes multisum
# more readable. Adds each value that is a multiple of 3 or 5 to 
# the sum variable.

# Further Exploration : investigate Enumerable.inject ( aka .reduce)
# Are array methods.  Try writing a solution with .inject.

def multiples(number)
  number_array = Array(1..number)
  multiples_array = []

  number_array.each do |num|
    if num % 3 == 0 || num % 5 == 0
      multiples_array << num
    end
  end
  multiples_array.inject(:+)
end

puts multiples(6)
# solution above with .inject
# again

def mult(number)
  (1..number).select { |i| i % 3 == 0 || i % 5 == 0 }.inject(:+)
end

puts '==========='
puts mult(6)
puts mult(20)

# Works! .select works.  .map returned true/false for each element
# .map better for an operation


