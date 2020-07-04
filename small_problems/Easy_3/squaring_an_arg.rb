# Using the method from the previous exercise, writ
# a method that computes the square of its argument

def multiply(num_one, num_two)
  num_one * num_two
end

def square(number)
  number * number
end

puts square(multiply(2, 3))

##  not quite correct
# LS below

def square2(n)
  multiply(n, n)
end

puts square2(5)

# Further Exploration

# Generalize this method to a 'power to the n'
# type method. cubed, to the 4th ,etc..
# Use the multiply method to do this

def power(n, e)
  if e == 0
    return 1
  elsif e == 1 
    return n
  else
    multiply(n, n**(e - 1))
  end
end

puts power(5, 4)

## my solution to Further Exploration .. Works..
