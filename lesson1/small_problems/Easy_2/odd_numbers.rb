# Print all odd numbers 1-99 inclusive.  All numbers should
# be printed on separate lines.

100.times do |num|
  if num % 2 == 1
    puts num
  else
    next
  end
end
# works.  LS below

value = 1
while value <= 99
  puts value
  value += 2
end
# Further Exploration
# Integer#upto, Array#select or Integer#odd

# w/ #odd
100.times do |num|
  if num.odd?
    puts num
  else
    next
  end
end

# w/ .upto

1.upto(50) { |i| print i, " " if i.odd? }

# good! w/ a space and on one line (print)

arr = (1..40).to_a
puts "\n"
odd_arr = arr.select { |num| num.odd? }
p odd_arr

# good.  Note, need "\n" in double quotes to work. Single
# qoutes don't work. Used p to display an array of odd 
# numbers.


