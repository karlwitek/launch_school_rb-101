# Example from videos in lesson 4.
# Create rows of even integers. Each row is an array. 
# row 1 [2], row 2 [4, 6], row 3 [8, 10, 12] ...
# The integers are in a contiuous sequence.  
# The number passed in the method is the row.  Return the sum
# of the array for that row.

def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length

  end
  row
end

# p create_row(2, 1)
# p create_row(4, 2)
# p create_row(8, 3)

p sum_even_number_row(1)
p sum_even_number_row(2)
p sum_even_number_row(4)

