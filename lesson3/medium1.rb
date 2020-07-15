# 1: Write a one line program that outputs a string
# 10 times with the subsequent line indented one
# space to the right

# LS -->
# 10.times { |number| puts (' ' * number) + "The Flintstones Rock!" }

# 2: the following will produce an error. why?
# puts "the value of 40 + 2 is " + (40 + 2)
# no implicit conversion of Integer into string

puts "the value of 40 + 2 is #{(40 + 2)}"
# first way to fix. another way ->
puts "the value of 40 + 2 is " + (40 + 2).to_s

# 3. refactor the following code without the 
# begin/end/until. The input will be positive numbers

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  divisor = number
  factors = []
  loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  break if divisor == 0
  end
  factors
  
end

p factors(50)
# works . LS -->

def factors2(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
factors
end

p factors2(100)

# 4. What's the difference between the two methods? 
# one uses << and the other uses +

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
a = [1, 2, 3, 4]
b = [1, 2, 3, 4]
p rolling_buffer1(a, 3, 5)
p rolling_buffer2(b, 3, 5)

p rolling_buffer1([1, 2, 3, 4], 8, 6)
p rolling_buffer2([1, 2, 3, 4], 8, 6)

p a  #[2, 3, 4, 5]
p b  #[1, 2, 3, 4]

# Both methods return the same value. In method 1, the called
# buffer (a) will be modified and will be changed after method 1
# returns. Method 2 (rolling_buffer2) will not alter the caller's
# input argument.

# 5. What's wrong with this code? (hint: limit variable)

# limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# puts fib(0, 1)

# limit is not accessible within the method definition.
# must be passed in or initialized inside body of method.

# limit = 15

# def fib(first_num, second_num, end_value)
#   while first_num + second_num < end_value
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# puts fib(0, 1, limit)

# works . again

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

puts fib(0, 1)

# works. LS --> 1 solution (pass is as argument)

# 6. What is the ouput?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)
p answer - 8
# outputs 34. The variable answer does not get accessed
# or changed.

# 7. Read explanation in solution. (not copying code for
# this exercise.)  Solution touches on passing a copy of the
# reference (object id) of the hash. The parameter initially
# points to the hash being passed in. In this case, the program
# (method) does not reassign the parameter, it uses it as-is, so
# the actual hash is changed.

# 8. ex of methods taking expressions as arguments. (Answered 
# Correctly). Refer to LS for code.

# 9. Consider these two simple methods.

def foo(param = 'no')
  'yes'
end

def bar(param = 'no')
  param == 'no' ? 'yes' : 'no'
end

puts bar(foo)
 # my answer is 'no' .. Correct. The value returned from the foo
 # method will always be 'yes', and 'yes' == 'no' will be false.
 






