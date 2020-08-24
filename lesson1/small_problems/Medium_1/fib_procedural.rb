# Rewrite your recursive fibonacci method so that it computes it results without recursion.

def fibonacci(n)
  a = 1
  b = 1
  c = 0
  if n == 1 || n == 2
    1
  else
    (n - 2).times do
      c = a + b
      a = b
      b = c
    end
  end
  c
end

puts fibonacci(5) # 5
puts fibonacci(10) # 55
puts fibonacci(14) # 377

# This based on Fibonacci sequence starting with 1,1,2.  Not 0, 1, 1, 2.
# This is the same as the previous exercise.

# LS -->

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

puts fibonacci(10) # 55

# This method starts out with an array of two numbers, [1, 1], to represent the first 2 numbers
# in the Fibonacci sequence.  It then proceeds to calculate each of the Fibonacci numbers in turn,
# updating the array in each iteration to include the two most recent Fibonacci numbers.