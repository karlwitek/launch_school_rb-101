# Given the code. What will be the final values of a and b?

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

puts a  # 2
p b  # [3, 8]
p arr  # [4, [3, 8]]

# The value of a didn't change because we are not referencing a at any point.
# This code arr[0] += 2 was modifying the array, arr not a.  In effect we are
# assigning a new object at that index of the array so that instead of arr[0] 
# containing a it now contains 4.  The value of b did change because b is an 
# array and we are modifying that array by assigning a new value at index 0 of
# that array.


