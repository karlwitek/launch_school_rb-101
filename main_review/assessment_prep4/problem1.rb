# First problem from Assessment.  Given an array of integers, find all pairs that when multiplied,
# the product is 100.  Pairs should be returned as an array within another array.  All sub-arrays
# should be unique.  (Used distinct in assessment)

# input - array of integers
# ouput - nested array of 2 element arrays where each sub array is the pair of numbers
# whose product equals 100 and each sub-array is unique

# initialize an array 'sub_arrays' and initialize a 'result' array
# iterate over given array with two loops to finds all possible pairs in the given array
# use 2 while loops or 2 for loops to find all pairs and save them in 'sub_arrays'
# iterate through 'sub_arrays' with #select to find all sub-array whose product is 100
# return 'result' array with #uniq called on it

def find_pairs(array)
  sub_arrays = []

  for start_idx in (0..array.size - 2) do
    for right_idx in ((start_idx + 1)..array.size - 1) do
      sub_arrays << [array[start_idx], array[right_idx]]
    end
  end
  result = sub_arrays.select do |sub|
    sub[0] * sub[1] == 100
  end
  result.uniq
end

arr = [1, 3, 4, 4, 25, -5, 1, 4]

# p find_pairs(arr) # [[4, 25], [25, 4]]

# Again with while loops

def find_pairs(array)
  sub_arrays = []

  left_idx = 0

  while left_idx <= array.size - 2
    right_idx = left_idx + 1
    while right_idx <= array.size - 1
      sub_arrays << [array[left_idx], array[right_idx]]
      right_idx += 1
    end
    left_idx += 1
  end
  result = sub_arrays.select do |sub|
    sub[0] * sub[1]== 100
  end
  result.uniq
  end

p find_pairs(arr) # [[4, 25], [25, 4]]


