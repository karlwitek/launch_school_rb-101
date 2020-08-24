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

# puts fibonacci(1) == 1
# puts fibonacci(2) == 1
# puts fibonacci(3) == 2
# puts fibonacci(4) == 3
# puts fibonacci(5) == 5
# puts fibonacci(12) == 144
# puts fibonacci(20) == 6765 # true  ( all )

# LS -->

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

# The ending condition for this method is the easiest part. We know from the description of the 
# problem that the method should return 1 for the 1st and 2nd Fibonacci numbers, so we make that our
# ending condition.  The recursive part of the fibonacci is unusual in that we call ourselves twice,
# once with nth -1 as the argument, and again with nth - 2.  We add the return values of the two 
# calls to arrive at the nth term result.

# Extra:

def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

puts fibonacci(8) # 21

# Example of tail recursion.( A way to write recursive methods so the language processor
# can optimize it better, often leads to faster solutions and the ability to recurse more
# d'eeply').

# Further: Can you identify any faults with the original fibonacci recursive method? Not bugs,
# but problems that impact its usability? How might you try to repair the issues you identify?

