# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd
# integer that is supplied as an argument to the method.  You may assume that the argument
# will always be an odd integer.

def top_half(odd_integer)
  num_of_rows = odd_integer / 2
  num_of_spaces = num_of_rows
  additional_stars = 1
  until num_of_spaces == 0 do
    puts "#{' ' * num_of_spaces}#{'*' * additional_stars}"
    num_of_spaces -= 1
    additional_stars += 2
  end
end

def bottom_half(odd_integer)
  num_of_rows = odd_integer / 2
  num_of_spaces = 1
  additional_stars = odd_integer - 2
  until num_of_spaces == num_of_rows + 1
    puts "#{' ' * num_of_spaces}#{'*' * additional_stars}"
    num_of_spaces += 1
    additional_stars -= 2
  end
end

def diamond(odd_integer)
  top_half(odd_integer)
  puts "#{'*' * odd_integer}"
  bottom_half(odd_integer)
end



puts diamond(9)
puts diamond(5)

#   *
#  ***
# *****
#  ***
#   *

puts diamond(15)

# LS -- > 

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)    { |distance| print_row(grid_size, distance) }
end

diamond(9)

# Our solution breaks the problem down into two smaller problems: printing a single row
# of the diamond, and a method to iterate through those rows.
# Iterating through the rows is most easily handled if you recognize that the bottom part of
# the diamond is the mirror image of the top part, with the center row of the diamond between
# these two parts.  Our solution takes this into account and iterates first from the first
# row to the middle row of the diamond, and then iterates in the reverse direction from the
# row just below the center to the bottom row.  We use the variable distance to keep track of
# how far from the center row, with the center row being a distance of 0 from itself.
# For each iteration, we call the print_row method.  print_row uses the grid size and the
# distance from the center row to determine how many stars are needed, and to center those
# stars within our grid.
# We could of done all this in one method, but the result would have either been pretty messy,
# or it would repeat itself.  By breaking things down into sub-problems, we were able to
# solve this problem easily.

# Further: Try modifying either solution so it prints only the outline of the diamond:

# LS solutions modified:

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  if number_of_stars == 1
    puts stars.center(grid_size)
  else
    puts "#{'*' + ' ' * (number_of_stars - 2) + '*'}".center(grid_size)
  end

end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)    { |distance| print_row(grid_size, distance) }
end

diamond(5)
#   *
#  * *
# *   *
#  * *
#   *


diamond(9)
