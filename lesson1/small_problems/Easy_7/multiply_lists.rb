# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments
# that have the same index.  You may assume that the arguments contain the same number of 
# elements.

def multiply_lists(arr1, arr2)
  result_array = []
  arr1.each_with_index do |num, index|
    result_array << (num * arr2[index])
  end
  result_array
end

a = [2, 3, 4]
b = [5, 5, 5]
c = [21, 31, 41]

p multiply_lists(a, b)
p multiply_lists(b, c)

# [10, 15, 20]
# [105, 155, 205]

# works.  LS -->

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

# We take a direct approach, and simply iterate an index into both Arrays, appending each
# product to the products Array.

# Further:  The Array#zip method can be used to produce an extremely compact solution to this
# method. See if you can come up with a one line solution(not counting the def and end lines).

def multiply_lists_zip(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end

p multiply_lists_zip(b, c)

# [105, 155, 205]  works.. lifted from student solutions.  My solution was missing .map.
# returns nil without .map

#  arr1.zip(arr2).map { |num1, num2| num1 * num2 } Another student solution (not checked).
