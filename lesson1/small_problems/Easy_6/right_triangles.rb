# Write a method that takes a positive integer, n, as an argument, and displays a right triangle
# whose sides each have n stars.  The hypotenuse of the triangle should have one end at the
# lower left of the triangle, and the other end at the upper right.

def triangle(length_of_sides)
  spaces = length_of_sides
  accum_num = 1
  length_of_sides.times do
    puts "#{' ' * (spaces - accum_num)}#{'*' * accum_num}"
    accum_num += 1
  end
end

triangle(5)
triangle(9)

#  Works.. LS -->

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

puts '========== LS =========='
triangle(5)

# Not sure if |n| is needed in LS code.
# Further Exploration: Try modifying your solution so it prints the triangle upside down
# from its current orientation.  Try modifying again so that you can display the triangle
# with the right angle at any corner of the grid.

# First modification:

def triangle(length_of_sides)
  spaces = length_of_sides
  accum_num = length_of_sides
  length_of_sides.times do
    puts "#{' ' * (spaces - accum_num)}#{'*' * accum_num}"
    accum_num -= 1
  end
end

puts '===== Further ========='
triangle(5)
# Good!

# Second Modification: create method for each orientation.

def ne(length_of_sides)
  spaces = length_of_sides
  accum_num = length_of_sides
  length_of_sides.times do
    puts "#{' ' * (spaces - accum_num)}#{'*' * accum_num}"
    accum_num -= 1
  end
end

def se(length_of_sides)
  spaces = length_of_sides
  accum_num = 1
  length_of_sides.times do
    puts "#{' ' * (spaces - accum_num)}#{'*' * accum_num}"
    accum_num += 1
  end
end

def nw(length_of_sides)
  spaces = length_of_sides
  accum_num = length_of_sides
  length_of_sides.times do
    puts "#{'*' * accum_num}#{' ' * (spaces - accum_num)}"
    accum_num -= 1
  end
end

def sw(length_of_sides)
  spaces = length_of_sides
  accum_num = 1
  length_of_sides.times do
    puts "#{'*' * accum_num}#{' ' * (spaces - accum_num)}"
    accum_num += 1
  end
end

def orient_triangle(length, corner)
  case corner
  when 'ne'
    ne(length)
  when 'se'
    se(length)
  when 'nw'
    nw(length)
  when 'sw'
    sw(length)
  end
end

puts '===== Further part 2 ========='

# orient_triangle(5, 'ne')
# orient_triangle(5, 'se')
# orient_triangle(5, 'nw')
orient_triangle(5, 'sw')

# good.
# *
# **
# ***
# ****
# *****
