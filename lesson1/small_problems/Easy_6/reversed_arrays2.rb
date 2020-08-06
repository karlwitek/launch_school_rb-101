# Write a method that takes an Array, and returns a new Array with the elements of the
# original list in reverse order. Do not modify the original list.  You may not use
# Array#reverse(!),  or the method wrote from the previous exercise.

def reverse_elements(array)
  new_arr = array.sort do |a, b|
    b <=> a
  end
  new_arr
end

arr = ['a', 'b', 'c', 'd']
p reverse_elements(arr).object_id
puts arr.object_id

# again

def reverse_elements2(array)
  new_array = []
  arr_clone = array.clone
  arr_clone.each do |element|
    item = array.pop
    new_array << item
  end

  new_array
end

p reverse_elements2(arr)
# ["d", "c", "b", "a"]  ( works )  LS -->

def reverse2(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end


arr3 = [1, 2, 3, 4, 5]
p reverse2(arr3)

#  Used reverse_each.  reverse_each is like each, except it processes the elements in
# reverse order. Unlike each, reverse_each only applies to Arrays.
# Further: An even shorter solution is possible by using either inject or 
# each_with_object (Enumerable module) . Try these.

def reverse3(array)
  array.inject([], &:unshift)
end

p reverse3(['cat', 'dog', 'fish'])

def reverse4(array)
  array.each_with_object([]) { |elem, new_array| new_array.unshift(elem) }
end

p reverse4([6, 5, 4, 3, 2, 1])

# (student solutions) (reverse3, reverse4) Both work..



