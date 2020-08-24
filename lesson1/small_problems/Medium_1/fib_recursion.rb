# Write a recursive method that computes the nth Fibonacci number, where nth is an argument
# to the method.

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# The Fibonacci series is a sequence of numbers starting with 1 and 1, where each number is the sum
# of the two previous numbers. The third Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3,
# the 5th is 2 + 3 + 5, and so on.. 

def fibonacci(n)
  if n < 3
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(5)
puts fibonacci(10)
puts fibonacci(13)

# 5
# 55
# 233

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765 # true  ( all )
