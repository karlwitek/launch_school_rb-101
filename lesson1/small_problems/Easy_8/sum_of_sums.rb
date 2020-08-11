# Write a method that takes an Array of numbers and then returns the sum of the sums of each
# leading subsequence for that Array.  You may assume that Array always contains at least one 
# number.

def sum_of_sums(array)
  new_array = []
  array.size.times do |n|
    new_array << array[0..n]
  end
  new_array.flatten.reduce(:+)
end

p sum_of_sums([1, 2, 3])
p sum_of_sums([1, 2, 3, 4, 5])
p sum_of_sums([4])
p sum_of_sums([1, 5, 7, 3])

# 10
# 35
# 4
# 36

# LS -->

def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end
p sum_of_sums([1, 2, 3, 4])

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

p sum_of_sums([1, 2, 3, 4])

# Have to keep track of two different values.  One is a running total (accumulator)
# It progressively sums up the elements in the array.  The other is the total sum
# and should be the value returned by our method.  Iterate over the array, on each 
# iteration we update the accumulator and add it to the sum_total to compute the 
# sum_total.  
# The second solution takes a different approach.  Initialize a variable for the 
# total sum.  Then sum up subsets of our numbers array and add each of those sums
# to the sum_total variable.  1.upto(numbers.size) is used to generate the correct
# size for each subset of our numbers array.  Use number.slice(0, count) to get that
# subset, and then reduce(:+) is used on the current subset to add up all its 
# elements.  Once we have computed the final sum(one that contains all the numbers in
# our array), and add that to our total sum, then we are finished.
