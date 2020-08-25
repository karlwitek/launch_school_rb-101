# Write a method that returns the last digit of the nth Fibonacci number.

# LS solution to previous exercise:

def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last.to_s[-1].to_i
end

puts fibonacci_last(20) # 5
puts fibonacci_last(15) # 0
puts fibonacci_last(100_001) # 1

# LS -->

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

puts fibonacci_last(20) # 5 

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

puts fibonacci_last(30) # 0

# p fibonacci_last(1_000_007) # 3 (correct)

# puts fibonacci_last(123456789) # 4 

# Solution 1: Calls the fibonacci method, converts the result to a string, and then returns the
# last digit.  This solution will have trouble with very large numbers.
# Solution 2: To compute the last digit of nth Fibonacci number, you only need the last digit of
# the nth-1 and nth-2 numbers.  As a result, you only ever need the last digit of any 
# intermediate result, which eliminates all of the computing effort neeeded to compute the 
# massive numbers involved.  Our second solution does exactly this: it only computes and uses the last
# digit in each intermediate result, and computes the last digit.

# Can you provide a solution to this problem that will work no matter how big the number? (almost
# instantly)
# solution: the last digit of repeats every 60 numbers in the sequence.

def fibonacci_last(nth)
  nth = nth % 60
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

puts '================='
puts fibonacci_last(63) # 2 
puts fibonacci_last(65) # 5
puts fibonacci_last(123456789987745) # 5 (correct)
puts fibonacci_last(123_456_789_987_745) # 5

