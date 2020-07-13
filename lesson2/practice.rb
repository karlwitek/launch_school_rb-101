#  Write a method that takes an array of integers and
# returns a new array with every other element.

require 'pry'


def other_element(arr)
  index = 0
  arr.map do |num|
    num * 3
  end
end

p other_element([1, 2, 3, 4, 5, 6, 7])

def every_other_element(array)
  i = 0
  b = []
  while i < array.length
    b << array[i]
    binding.pry
    i += 2
  end
  b
end

p every_other_element([1, 2, 3, 4, 5, 6, 7, 8])
