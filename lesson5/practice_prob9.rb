# Given this data structure, return a new array of the same structure but with the sub
# arrays being ordered(alphabetically or numerically as appropriate) in
# descending order.


arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

a = arr.map do |array|
  array.sort { |a, b| b <=> a}
end

p a
p arr
# works.  store in variable 'a'. adding ! to map or sort
# changes arr . ( would not be a new array, would be mutated)
# LS -->

c = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p c
# Need to return a new array but with the items in it transformed in some way.
# map is fairly obvious choice. Also know that we want each sub array to be 
# ordered, so within the block that we pass to map, we can call sort on the 
# sub array for that iteration.  Since we want the sub-arrays sorted in reverse
# order, we need to call it with a block, within which we change the order of 
# a and b.


