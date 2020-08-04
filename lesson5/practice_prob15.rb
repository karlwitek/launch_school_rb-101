# Given this data structure write some code to return an array which contains only the
# hashes where all the integers are even.


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# a = arr.map do |hsh|
#   hsh.values.select do |ary|
#     ary.all? { |num| num.even? }
#   end
# end

# p a

# [[], [[2, 4, 6], [4]], [[8], [6, 10]]]
# not quite correct.. Want an array of hashes. Also one hash in arr has multiple
# key/value pairs.  Want the hash if all numbers are even.

b = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p b

# It is clear that we will need to return a subset of the objects in the outer array, 
# so .select should be a fairly obvious choice to call on that array.  The key is then
# to figure out how to carry out the selection.
# Since select will return all the elements for which the block returns true and
# we only want hashes where ALL the integers are even, all? combined with even?
# is a good choice.  It is complicated slightly by the fact that the integers are
# further nested inside the inner arrays, so we need to iterate through these first.

# If all the integers in the inner array are even, then the inner block returns true
# to the innermost call to all?. If all of the inner blocks for a particular hash
# return true then the middle block returns true to the outer call to all? which
# in turn causes the outer block to return true to the select method for that
# iteration.



