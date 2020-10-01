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

# puts next_biggest_number(6975) # 7569
# puts next_biggest_number(1236978) # 1236987
# puts next_biggest_number(9) # -1
# puts next_biggest_number(111) # -1
# puts next_biggest_number(531) # -1

# another solution:

def next_biggest_number(number)
  max = max_num(number)
  ((number + 1)..max).each do |num| # number + 1 so it doesn't match the given number
    return num if max == max_num(num)
  end
  -1
end
# return num if max == max_num(num) . If written this way, would not need matches? method.

# puts next_biggest_number(42213) # 42231

# Doesn't return max value of range because the .each method does not get executed..?

# if 531 is given number:
def check
  (532..531).each do |n|
    puts "executing"
  end
  puts "did not execute #each"
end

# check # did not execute #each

# Another approach to solving this problem:
# 6975  example input
# look at each number from right to left, keep going until find number that is not
# greater than number currently on (not ascending in value)
# once found, grab the next biggest number of the numbers that have gone through
# replace the non-ascending valued number(6) with the next biggest(7) and sort the trailing numbers


def next_biggest_number(number)
  str_num = number.to_s
  index = -1
  current_number = str_num[index].to_i
  next_number = str_num[index - 1].to_i
  index -= 1
  until next_number < current_number
    current_number = str_num[index].to_i
    next_number = str_num[index - 1].to_i
    index -= 1
  end
  return -1 if next_number == 0 #(nil.to_i => 0)

  array_str_nums = str_num.chars
  untouched_arr = array_str_nums.slice!(0...index)
  array_str_nums.sort!
  replacement_number = array_str_nums.select { |num| num.to_i > next_number }[0]
  idx = array_str_nums.index(replacement_number)
  new_first_num_str = array_str_nums.slice!(idx)
  new_array = [new_first_num_str] + array_str_nums
  final_array = untouched_arr + new_array
  final_array.join.to_i
  
end

puts next_biggest_number(6975) # 7569
puts next_biggest_number(12349753) # 12353479
puts next_biggest_number(12346975) # 12347569
puts next_biggest_number(531) # -1
puts next_biggest_number(111) # -1
puts next_biggest_number(12) #21
puts next_biggest_number(112) #121
puts next_biggest_number(66975) # 67569
puts next_biggest_number(55876554) # 56455578
