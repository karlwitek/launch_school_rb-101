# Given the following data structure, return a new array containing the same sub-arrays as
# the original but ordered logically by only taking into consideration the odd numbers
# they contain.


arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

b = arr.sort_by do |array|
  array.select do |numbers|
    numbers.odd?
  end
end

p b

# works..   [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
# again

arr.sort_by! do |array|
  array.select do |numbers|
    numbers.odd?
  end
end

p arr
# works by destructive ! method on sort_by. p arr instead of variable
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
# LS -->

c = arr.sort_by do |array|
  array.select do |numbers|
    numbers.odd?
  end
end

p c
# same solution as my first solution





