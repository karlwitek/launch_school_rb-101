# Write a method that takes an Array as an argument, and reverses its elements in place;
# that is, mutate the Array passed into this method.  You may not use .reverse,.reverse!

def reverse_elements(array)
  array.sort! do |a, b|
    b <=> a
  end
end

arr = [1, 2, 3, 4, 5]
arr2 = ['a', 'b', 'c']
arr3 = ['abc']

p reverse_elements(arr)  # [5, 4, 3, 2, 1]
p reverse_elements(arr2)  # ["c", "b", "a"]
p reverse_elements(arr3)  # ["abc"]

puts "before #{arr.object_id}: after method #{arr.object_id}."
#  before 42776440: after method 42776440.

# works.. LS -->

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

p reverse!(['cat', 'dog'])

# Sets one index to point to the beginning of the array, another index to point to
# the end of the array and then walks through the array exchanging elements at each
# step. Since we update the Array in place, we name the method reverse!.
# Note that we terminate at the middle of the list. If we continued, we would end up
# rebuilding the original array.
# The most interesting part of this code is the parallel assignment.  This is a Ruby
# idiom for exchanging two values without requiring an intermediate variable.
# This is worth remembering!!  Usually, would use Array#reverse! . Example of writing
# own versions of standard methods to understand how they work, and use those 
# principles in your own code.



