# Given an array of integers.  Find the index (N) where the sum of the integers to the left of N
# is equal to the sum of the integers to the right of N. If there is no index that this happens
# return -1.
# Empty arrays are equal to 0 in this problem.
# Examples: [1, 2, 3, 4, 3, 2, 1] return index 3 
# [20, 10, -80, 10, 10, 15, 35] At index 0 (20), the left side is [] ([] == 0). The right side 
# is equal to 0, so index 0 is the index where left and right sides are equal.

# input - array of integers
# output - the index of the array where the left and right side is equal. (the entire array is being
# used for determining equality)

# there is one value that is not used in finding sum (it is N)
# start with index 0 , find sum [1..-1], compare to the value 0 ([])
# next, index 1, find sum [2..-1], compare to index 0's value
# next, index 2 , find sum [3..-1], compare to [0..1]'s value , repeat..
# when [0..N - 1] == [N + 1..-1], return N.

# work directly with given array, do not need to create new array.
# use N as index for first loop
# create sub-arrays to find sum on both sides on N 
# N will be incremented , use [0..N - 1] for left side, [N + 1.. -1] for right.
# Try to accomplish in one loop:

def find_even_index(arr)
  return 0 if arr[1..-1].sum == 0
  for n in 1..arr.size - 1
    right = arr[n + 1..-1]
    left = arr[0..n - 1]
    return n if left.sum == right.sum
  end
  -1
end


puts find_even_index([1, 2, 3, 4, 3, 2, 1]) # 3
puts find_even_index([1, 100, 50, -51, 1, 1]) == 1 # true
puts find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3 # true
puts find_even_index([20, 10, -80, 10, 10, 15, 35])  == 0 # true


