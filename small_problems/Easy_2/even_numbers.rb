# Print the even numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

number = 0
while number <= 99
  puts number
  number += 2
end

# my solution , again

0.upto(99) { |num| puts num if num.even? }
# again

99.times do |n|
  if n.even?
    puts n
  else
    next
  end
end

# All three work.  LS below

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

# minor variation. Increment by 1. Only print if even
