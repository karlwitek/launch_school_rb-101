# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of every pair of numbers that can be formed
# between the elements of the two Arrays.  The results should be sorted by increasing value.
# You may assume that neither argument is an empty array.

def multiply_all_pairs(arr1, arr2)
  result_array = []
  arr1.each do |num1|
    arr2.each do |num2|
      result_array << num1 * num2
    end
  end
  result_array.sort
end

a = [1, 2, 3]
b = [3, 3, 3]
c = [1, 2, 3, 4]
d = [2, 3, 4]

p multiply_all_pairs(a, b)
p multiply_all_pairs(c, d)

# [3, 3, 3, 6, 6, 6, 9, 9, 9]
# [2, 3, 4, 4, 6, 6, 8, 8, 9, 12, 12, 16]

# works.  LS -->

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

p multiply_all_pairs(b, c)

# Another LS solution -->

def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs(c, d)

#  For the first solution we have two iterators, one for the first array and one for the 
# second.  We want all the different combinations of multiples, duplicates included.  To
# do this, we need to iterate through each item in the first array, and then multiply it 
# by each item in the second array. Finally, we sort our array of products and return that
# array.

# Look up .product method.
# Further: Did you solve it differently? What method did you use?


