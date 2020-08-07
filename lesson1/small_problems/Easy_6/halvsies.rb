# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of
# nested Arrays) that contain the first half and second half of the original array,
# respectively.  If the original array contains an odd number of elements, the middle
# element should be placed in the first half Array.

a = [1, 2, 3, 4]
b = [1, 2, 3, 4, 5, 6, 7]

# p a.slice!(0..1)
# p a

def half_it(array)
  if array.size.even?
    first_length = array.size / 2
    second_length = first_length
  else 
    first_length = (array.size + 1) / 2
    second_length = (array.size - 1) / 2
  end
  first_array = array.slice!(0...first_length).to_a
  second_array = array
  new_array = []
  new_array << first_array
  new_array << second_array
  
end


p half_it(a)
p half_it(b)
p half_it([1, 5, 2, 4, 3])

# [[1, 2], [3, 4]]
# [[1, 2, 3, 4], [5, 6, 7]]
# [[1, 5, 2], [4, 3]]

# works.  LS -->

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([4, 5, 6, 7, 8, 9])
p halvsies([1, 5, 6, 2])

# [[4, 5, 6], [7, 8, 9]]
# [[1, 5], [6, 2]]
# Split the array into two pieces.  First, get the middle, which is more exactly the size
# of the first half, by dividing the original array's size by two.  If the the original
# array is odd in size, then the call to ceil will account for that, making the first half
# larger than the second by one.  Use Array#slice method.  slice takes two arguments, the
# first is the starting index and the second one is the length of the slice. For the 
# second half, we can use our middle value as the starting index and specify a length that
# includes any remaining elements left in the original array after we removed the first
# half.  Finally, our halvsies array is created by specifying our two halves as the sole
# elements of a new array.



    

