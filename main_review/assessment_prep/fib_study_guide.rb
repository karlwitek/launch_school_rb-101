# (study guide) 1. reverse an array without using the built in reverse method.
# 2. select the element out of the array if its index is a fibonacci number.
# 3. write a method to determine if a word is a palindrome, without using
# the reverse method.


# 2. select the element out of the array if its index is a fibonacci number.

# input - array
# output - any elements from given array where the index of that element is 
# a fibonacci number.

# create an array of fibonacci numbers ( size of array?) write fibonacci code to create array
# iterate over input array with index, if fib_array.include?(index) , append element to a new
# array (results array of elements selected)

# first: write a procedural Fibonacci method that returns an array of fib numbers:

def fibonacci(nth) # the nth number of the sequence
  fib_array = [1, 1]
  3.upto(nth) do |index|
    number = fib_array[index - 3] + fib_array[index - 2]
    fib_array << number
  end
  fib_array
end

p fibonacci(5) # [1, 1, 2, 3, 5]
p fibonacci(15) # [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]

def fib(nth)
  a = 1
  b = 1
  n = 1
  (nth - 2).times do 
    n = a + b
    a = b
    b = n
  end
  n
end

p fib(5) # 5
p fib(15) # 610

def fib_recursive(nth)
  return 1 if nth <= 2
  num = fib_recursive(nth - 2) + fib_recursive(nth - 1)
end

# could leave out the num variable ( see LS below )
p fib_recursive(5) # 5
p fib_recursive(15) # 610

p fib(1) # 1
p fib(2) # 1
p fib(3) # 2
p fib(4) # 3
p fib(5) # 5


#  select the element out of the array if its index is a fibonacci number:
# this fibonacci method returns an array of fibonacci numbers:

def fibonacci(nth, size) # the nth number of the sequence # modified to use with index_is_fib..
  fib_array = [1, 1]
  3.upto(nth) do |index|
    number = fib_array[index - 3] + fib_array[index - 2]
    fib_array << number
    break if number > size + 1
  end
  fib_array
end

p fibonacci(15, 10) # [1, 1, 2, 3, 5, 8, 13] # 13 > 10 + 1 (broke out of the loop)(good!)


array = [3, 4, 5, 6, 7, 8, 9, 12, 23, 45, 67, 89, 21, 34, 3, 4, 5, 4, 3, 2, 1, 4, 5, 6]

def index_is_fib_number(array)
  size = array.size
  fib_array = fibonacci(100, size)
  p fib_array # [1, 1, 2, 3, 5, 8, 13, 21, 34]
  selected_array = []
  array.each_with_index do |element, index|
    if fib_array.include?(index)
      selected_array << element
    end
  end
  selected_array
end


p index_is_fib_number(array)
# [4, 5, 6, 8, 23, 34, 4] (4 is index 1, 5 is index 2, 6 is index 3, 8 is index 5)(good!)


## MORE fibonacci methods (LS)

# LS -->
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# LS -->

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end
