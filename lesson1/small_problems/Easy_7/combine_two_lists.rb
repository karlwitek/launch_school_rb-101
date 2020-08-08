# Write a method that combines two Arrays passed in as arguments, and returns a new Array that 
# contains all elements from both Array arguments, with the elements taken in alternation.
# You can assume that both input Arrays are non-empty, and that they have the same number of 
# elements.

def combine_two_lists(array1, array2)
  combined_array = []
  index = 0

  loop do
    combined_array << array1[index]
    combined_array << array2[index]
    index += 1
    break if index == array1.size
    
  end
  combined_array
end

a = ['a', 'b', 'c', 'd']
b = [1, 2, 3, 4]

p combine_two_lists(a, b)
# again with .times

def combine_two_lists2(array1, array2)
  combined_array = []
  index = 0

  array1.size.times do
    combined_array << array1[index]
    combined_array << array2[index]
    index += 1
  end
  combined_array
end

p combine_two_lists2(a, b)
# works 
#  ["a", 1, "b", 2, "c", 3, "d", 4]
#  ["a", 1, "b", 2, "c", 3, "d", 4]

# LS -->

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave(a, b)

# Use #each_with_index to get values and index numbers for array1, then use the index number
# to access the corresponding element in array2.
# Further Exploration:  Read about Array#zip.  It is close to interleave, and more flexible.
# interleave can be implemented in terms of zip and one other method from the Array class.
# Rewrite interleave to use .zip

def interleave2(array1, array2)
  array1.zip(array2).flatten
end

p interleave2(a, b)

#  [["a", 1], ["b", 2], ["c", 3], ["d", 4]]  without .flatten
#  ["a", 1, "b", 2, "c", 3, "d", 4]  output as is 


# experiment:

x = a
y = b
p [8, 9, 10, 11].zip(x, y)  #  [[8, "a", 1], [9, "b", 2], [10, "c", 3], [11, "d", 4]]

p [8, 9].zip(x, y)  #   [[8, "a", 1], [9, "b", 2]]



