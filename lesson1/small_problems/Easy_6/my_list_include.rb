# Write a method named include? that takes an array and a search value
# as arguments.  This method should return true if the search value
# is in the array, false if not.  You may not use .include? in your
# solution.

def include?(array, search_element)
  array.each do |array_element|
    if array_element == search_element
      return true
    end
    false
  end
end

arr1 = [2, 3, 4, 5, 6, 7, 8, 9]
arr2 = ['a', 'b', 'c', 'd']

# puts include?(arr1, 5) # true  (breaks out of iteration and return true due to explicit return)
# puts include?(arr1, 1) # list of elements see below with 'p'
# p include?(arr1, 1)  # [2, 3, 4, 5, 6, 7, 8, 9]  Does not return false. Instead returns the 
#  the return value of the .each call (the original array)  Not correct output!
# Move false return value out of loop iteration..

def include?(array, search_element)
  array.each do |array_element|
    if array_element == search_element
      return true
    end
  end
  false
end

puts include?(arr1, 5) # true
puts include?(arr1, 1) # false  (correct output)

puts include?(arr2, 'b') # true
puts include?(arr2, 'z') # false  (correct)

puts include?([], 3)  # false
puts include?([nil], nil) # true

# works.. LS -->

def include?(array, value)
  !!array.find_index(value)
end

puts '=========== LS =========='
puts include?(arr1, 3)

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

puts include?(arr1, 4) # true
puts include?(arr1, 1) # false

# The first method uses Array#find_index to scan the array for the first element that has
# the specified value.  find_index returns the index number of the found element, which 
# will always have a truthy value, or nil if no such element is present.  We then use
# !! to force the return value to true of false in accordance with the implied promise
# of the ? in include?.  
# The second method does essentially the same thing, but it uses each instead of find_index.
# This takes a bit more work since we are explicitly returning false if the value is not
# found.  (ME) .each works because the false return value is not part of an if statement..?
# And is the last line evaluated if the element is not found..







