# Write a method that takes a positive integer and returns the next biggest number formed by
# the same digits: If no bigger number can be composed using those digits, return -1.
# Examples:   12 => 21 , 513 => 531 ,  531 => -1


# My solution did not work. => student Solution :

# input : integer
# output : integer, -1 if no valid number found

# Test Cases:
# 12 => 21
# 513 => 531

# 
# create method to find max number

def max_num(number)
  number.to_s.chars.sort.reverse.join.to_i
end

# puts max_num(1124) # 4211

# create method to test if input number matches digits of number found in iteration

def matches?(number, num)
  number.to_s.chars.sort == num.to_s.chars.sort
end

# create main method:

def next_biggest_number(number)
  max = max_num(number)
  ((number + 1)..max).each do |num| # number + 1 so it doesn't match the given number
    return num if matches?(number, num)
  end
  -1
end

puts next_biggest_number(6975) # 7569
puts next_biggest_number(1236978) # 1236987
puts next_biggest_number(9) # -1
puts next_biggest_number(111) # -1
puts next_biggest_number(531) # -1

# another solution:

def next_biggest_number(number)
  max = max_num(number)
  ((number + 1)..max).each do |num| # number + 1 so it doesn't match the given number
    return num if max == max_num(num)
  end
  -1
end
# return num if max == max_num(num) . If written this way, would not need matches? method.

puts next_biggest_number(42213) # 42231

# Doesn't return max value of range because the .each method does not get executed..?

# if 531 is given number:
def check
  (532..531).each do |n|
    puts "executing"
  end
  puts "did not execute #each"
end

check # did not execute #each


