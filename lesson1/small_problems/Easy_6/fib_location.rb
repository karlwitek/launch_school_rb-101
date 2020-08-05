# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument.
# ( The first Fibonacci number has index 1 )

# Write Fibonacci method first.  Use results when writing method for problem.

def fib(length)
  arr = []
  first_num, second_num = [0, 1]

  length.times do
    first_num, second_num = second_num, first_num + second_num
    arr << first_num
  end
  arr
end

# p fib(7)

def find_fib_index_by_length(digits)
  counter = 0
  num_1, num_2 = 0, 1

  while num_1.to_s.length < digits
    counter += 1

    num_1, num_2 = num_2, num_2 + num_1 
  end
  counter
end


puts find_fib_index_by_length(2)  # 7
puts find_fib_index_by_length(3)  # 12
puts find_fib_index_by_length(10)  # 45
puts find_fib_index_by_length(100)  # 476

# works.. LS -->

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10)

# Set first, second to 1 in accordance with the series definition. We start our index
# at 2 since we now have the 2nd Fibonacci number in 'second' (var).
# We then begin iterating through the numbers, exiting the loop when we finally 
# encounter a Fibonacci number of the correct size.  During each iteration, we first
# increment our index, then compute the newest number in the sequence by adding the
# last 2 numbers together.  After checking for the desired result, we then replace 
# 'first' and 'second' with the pair of numbers that will be used in the next calculation.
# Finally, we return our index; this is the index of the first Fibonacci number with
# number_digits' digits.
# Note: We check whether the result is >= the required number of digits. The > part of this
# comparison will probably never be true, but it's safer to ensure that we don't end up in
# an infinite loop, just in case there are no numbers with the exact numbers of digits 
# we want.

# Further: often wrote with a recursive method. With these values, it is likely that it 
# would of resulted in the program running out of stack space.  (more later)








