# Write a method that takes an array of numbers, and returns an
# array with the same numbers of elements, and each element
# has the running total from the original array.

def running_tot(arr)
  new_arr = [arr[0]]
  total = arr[0]
  for i in (1..arr.size - 1)
    total += arr[i]
    new_arr << total
  end
  new_arr
end

p running_tot([1, 2, 3, 4])
p running_tot([2, 4, 6, 8, 10, 12, 14])

# works.  LS below

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts '============'
p running_total([2, 3, 4, 5])

# this solution calculates the running total while
# building the resulting array.

# Further Exploration
# Solve using Enumberable#each_with_object or 
# Enumerable#inject

def total(arr)
  tot = 0
  arr.each_with_object([]) do |e, a|
     tot += e
     a << tot
  end
end

puts '============'
p total([1, 2, 3, 4])
p total([2, 4, 6, 8, 10])

# works
#  again with .inject

def run_tot(array)
  total = 0
  array.inject([]) do |result, element|
    total += element
    result << total
    result
  end
end

puts '============'
p run_tot([1, 2, 3, 4])
p run_tot([1, 2, 3, 4, 5, 6, 7])

# works also. May be a better way.

