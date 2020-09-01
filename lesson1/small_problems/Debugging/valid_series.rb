def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

# p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
# p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
# p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
# p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
# p valid_series?([10, 6, 19, 2, 6, 4])  

# valid_series? method check whether a series of numbers is valid.  For the purposes of this
# exercise, a valid series must contain exactly three odd numbers. Additionally, the numbers
# in the series must sum to 47. The last test case is not returning the expected result. why?

# answer: (line 5) is assignment (=), not (==) comparison operator (equality)

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])  

# LS -->
# On line 5 of our original code, we mistakenly performed assignment rather than comparison.
# == performs equality comparison and returns a Boolean, while = is used for variable
# assignment and returns the assigned value.  In this case, the assigned value was 3, which
# always be evaluated as a truthy condition in our ternary operator.  The method therefore
# returned true for all series of numbers that sum to 47, irrespective of how many odd numbers
# it contains.

# Further: If you look at odd_count == 3 ? true : false, you can see that the equality comparison
# odd_count == 3 itself returns a Boolean. Is the ternary operator on line 5 really necessary in
# order ot return a Boolean from our method? 
# No, is not necessary. see below:

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 # ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])  