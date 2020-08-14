# Write a method that rotates an array by moving the first element to the end of the array.  The 
# original array should not be modified.  Do not use the method Array#rotate or Array#rotate!
# for your implementation.

def rotate(array)
  array.map do |elem|
    if elem == array[0]
      elem = array[-1]
    elsif elem == array[-1]
      elem = array[0]
    else 
      elem
    end
  end
end

arr = [1, 2, 3, 4, 5]
p rotate(arr)
p arr
p rotate(['a'])
p rotate(['a', 'b', 'c'])

# [5, 2, 3, 4, 1]
# [1, 2, 3, 4, 5]
# ["a"]
# ["c", "b", "a"]

# LS -->

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array(['a', 'b', 'c', 'd'])

# Our solution simply slices everything out of the array except the first element, then appends
# the original first element to the end.  Note that we must be careful to not mutate array.

# Further:  Write a method that rotates a string instead of an array.  Do the same thing for
# integers.  You may use rotate_array from inside your new method.

def rotate_string(string)
  array = string.split('')
  rotate_array(array).join
end

puts rotate_string('rotation') # otationr

def rotate_integer(int)
  array = int.to_s.split('')
  rotate_array(array).join
end

puts rotate_integer(3456) # 4563


