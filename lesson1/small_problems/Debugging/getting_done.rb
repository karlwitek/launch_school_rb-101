# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# We wrote a method for moving a given number of elements from one array to another.  We 
# decide to test it on our todo list, but invoking move on line 11 results in a 
# SystemStackError.  What does this mean and why does it happen?

# my answer:
# A SystemStackError occurs when the memory allocated to execute the program exceeded the
# the memory available on the stack.  This method is a recursive function and does not have
# terminating condition.

# original method:

# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# def move(n, from_array, to_array)
#   n.times do 
#     to_array << from_array.shift
#   end
# end

# ["coffee with Tom"]
# ["apply sunscreen", "go to the beach", "study", "walk the dog"]

# this method gives the correct output.. Try with recursion -->

def move(n, from_array, to_array)
  to_array << from_array.shift
  if n > 1
    move(n - 1, from_array, to_array)
  end
end

# ["coffee with Tom"]
# ["apply sunscreen", "go to the beach", "study", "walk the dog"]


# This also gives correct output. Note, line 40 passes a new value for n (n - 1) . This value is 
# used in if condition.  Starts at 2, method called for the first time, (2 - 1) gets passed in as 
# n when move is called on line 40.  n now has the value 1.  1 is not greater than 1 so move is 
# not called and the method is exited.  (The arrays are mutated)

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# LS -->
# Every recursion needs a base case, i.e. a condition under which it will stop.  Our 
# method doesn't have one, so it repeatedly calls itself with ever decreasing values
# for n.
# move(2, ..., ...)
# move(1, ..., ...)
# move(0, ..., ...)
# move(-1, ..., ...)
# move(-2, ..., ...)

# In order to know where it needs to return to after finishing each of these calls, Ruby
# puts each call on a call stack.  Since we never stop, this stack keeps growing and 
# growing, until it exceeds its limit. This causes the SystemStackError.
# Need to add a condition under which the recursion stops.

def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# We want to stop as soon as we have moved n elements from one array to the other
# (when n == 0). The code we have added on line 2 tells Ruby to return from the method
# when that condition is met.

# Further: What happens if the length of the from_array is smaller than n?

# move(2, todo, done)
# p todo
# p done

move(4, todo, done)

p todo
p done

# []
# ["apply sunscreen", "go to the beach", "study", "walk the dog", "coffee with Tom", nil]


# The todo array becomes empty.  The done array contains a nil value for each time 
# the move method was called while the todo array was empty.
