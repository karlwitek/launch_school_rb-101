# Write a method that returns an array that contains every other
# element of an array that is passed in as an argument.  The values 
# in the returned list should be the 1st, 3rd, etc.. (position , not
# index )

# def odd_list(array)
#   i = 0
#   array.map do |element|
#     element[i]
#     i += 2
#   end
# end

# p odd_list([3, 4, 5, 6])
## returned [2, 4, 6, 8, 10, 12, 14]  Not correct!!
# try again.  Returning i values. not doubling

def odds(array)
  new_array = []
  while array.length > 0
    a = array.shift
    new_array << a
    array.shift
  end
  new_array
end

p odds([1, 2, 3, 4, 5])

p odds((1..25).to_a)

p odds(['abc', 'def', 'ghi', 'jkl', 'mno'])

## Works..  LS below

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

p oddities([1, 2, 3, 4, 5, 6, 7, 8])

# by changing index's initial value to 1 (line 38), can output
# the 2nd, 4th, 6th element and so on..











