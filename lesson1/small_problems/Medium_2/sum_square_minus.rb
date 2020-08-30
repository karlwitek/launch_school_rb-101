# Write a method that computes the difference between the square of the sum of the first n positive
# integers and the sum of the squares of the first n positive integers.
# ex.  (3)  (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2) == 22

def sum_square_difference(number)
  array_all_numbers = []

  1.upto(number) do |n|
    array_all_numbers << n
  end
  sum_of_squares_arr = array_all_numbers.map { |num| num**2 }.reduce(:+)

  array_all_numbers.sum**2 - sum_of_squares_arr
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150

# true
# true
# true
# true

# LS -->

def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

puts sum_square_difference(3) # 22

# Loop through all of the integers between 1 and n, and compute the sum and sum of the squares as
# we go.  At the end, we subtract the sum of the squares from the square of the sum.
