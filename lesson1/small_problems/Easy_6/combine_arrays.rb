# Write a method that takes two arrays as arguments, and returns an Array that contains
# all of the values from the original arrays.  There should be no duplication of values in the
# returned arrays.

def combine_arrays(arr1, arr2)
  c = arr1 << arr2
  c.flatten.uniq
end

a = [1, 2, 2, 3]
b = [2, 3, 4]

# p combine_arrays(a, b)
# [1, 2, 3, 4]  works.  again -->

def combine(arr1, arr2)
  arr2.each do |elem|
    arr1 << elem
  end
  arr1.uniq
end

# p combine(a, b)
# works .. Try without .uniq

def combine2(arr1, arr2)
  combined_array = arr1 + arr2
  p combined_array
  start_index = 0
  next_index = 1
  sub_array = []
 
  loop do
    next_index = start_index + 1
    loop do
      if combined_array[start_index] == combined_array[next_index]
        sub_array << combined_array[next_index]
      end
      next_index += 1
      break if next_index == combined_array.size + 1
    end
    start_index += 1
    break if start_index == combined_array.size
  end
  reduced_arr = combined_array - sub_array
  sub_array.each do |e|
    if reduced_arr.include?(e)
      next
    else
      reduced_arr << e
    end
  end
  reduced_arr
end

# p combine2(a, b)
# [1, 4]

# [2, 2, 2, 3] value of sub_array.  Did not implement a way to leave the first value
# in the array.  Put the element back in the reduced array if not already in there.
# Very inefficient code..

x = [4, 4, 5, 6, 7]
y = [4, 5, 8, 8, 8, 9]

p combine2(x, y)

# LS -->
def merge(arr1, arr2)
  arr1 | arr2
end

p merge(a, b)

# Use the Ruby method Array#|.  This is a method that gives the set union of two arrays, so
# the result contains no duplicates.  It works perfectly for our merge method. The union
# part of this method means that we get back all the elements that both arr1 and arr2
# might contain, but without duplicates.

# Further Exploration: solve other ways.  Done.



