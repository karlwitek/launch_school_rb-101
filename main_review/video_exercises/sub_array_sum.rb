# Find the maximum sum of a contiguous subsequence in an array of integers:
# example: [-2, 1, -3, 4, -1, 2, 1, -5, 4]  is 6 : [4, -1, 2, 1]
# if array is made up of only positive numbers, then sum is sum of entire array.
# if array is made up of only negative numbers, return 0 instead.
# an empty array has a 0 sum.

# input - array of integers (positive or negative)
# output - integer that is the max sum of a subsequence within the array that gives the greatest sum
# output - 0 if all integers are negative. 0 if empty array given.

# use a  loop to create sub arrays with increasing length with same starting index.
# use a nested loop to increment starting index and repeat step above
# find sum for each sub array. if sum of sub-array is greater, save value.  save sub-array also?
# use array[index, num_of_elements] syntax to define sub-arrays.
# initialize vars and test often
# check if all integers are negative. check if empty.

def find_largest_subsequence(array)
  sum = 0
  start_index = 0
  sub_num = 1
  total_elements = array.size
  return 0 if array.all? { |elem| elem < 0 } || array.empty?

  while start_index <= (total_elements - 1) do
    iteration_num = total_elements - start_index
    sub_num = 1
    while sub_num <= iteration_num do
      sub_sum = array[start_index, sub_num].sum
      sum = sub_sum if sub_sum > sum
      sub_num += 1
    end
    start_index += 1
  end
  sum
end

# puts find_largest_subsequence([1, 2, 3]) # 6
# puts find_largest_subsequence([-1, 2, 3, -2, -1]) # 5
puts find_largest_subsequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # 6
puts find_largest_subsequence([]) # 0
puts find_largest_subsequence([-1, -3, -5, -7]) # 0

# student solution:

def max_sequence(array)
  return 0 if array.all? { |number| number < 0 }

  result = []
  (0..(array.size - 1)).each do |index1|
    (index1..(array.size - 1)).each do |index2|
      result << array[index1..index2]
    end
  end
  result.max_by { |sub_array| sub_array.sum }.sum
end

puts max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # 6
puts max_sequence([]) # 0  satisfies array.all? {|n| n < 0 }
puts max_sequence([-2, -5, -8]) # 0






