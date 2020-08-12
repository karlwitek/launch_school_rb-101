# Write a method that takes an integer argument, and returns an Array of all integers, in 
# sequence, between 1 and the argument.  You can assume that the argument will always be a 
# valid integer that is greater than 0.

def count_up(number)
  (1..number).to_a
end

p count_up(6) # [1, 2, 3, 4, 5, 6]
p count_up(-1) # []

def count_up(number)
  %w(1..number)
end

p count_up(5) # ["1..number"]  NOT CORRECT

def count_up(number)
  index = 1
  array = []
  loop do
    array << index
    break if index == number
    index += 1
  end
  array
end

p count_up(7) # [1, 2, 3, 4, 5, 6, 7]

# LS -->

# same solution as my first solution.  
# Further: What would the method return if the argument is not greater than 0? What if the 
# argument is -1?  Can you alter your method to handle this case?

# p count_up(-1) # []   when calling the first method with (1..number).to_a

def count_up(number)
  if number < 0
    (number..1).to_a
  else
    (1..number).to_a
  end
end


p count_up(-3) # [-3, -2, -1, 0, 1]

# one way..?

