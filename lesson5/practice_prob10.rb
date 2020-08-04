# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the 
# original, but where the value of each integer is incremented by 1.


array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

b = array.map do |hash|
  hash.each do |key, num|
    hash[key] += 1
  end
end


p b

# added variable b to store value of returned array.
# also named the original array 'a'
# works # [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]
# LS -->

c = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p c
# I created variable c.  
# Here map is iterating through the array.  On each iteration it is creating a new
# hash(incremented_hash) and then iterating through the hsh object for that iteration
# in order to add key-value pairs to this hash using the original keys but values
# incremented by 1.  The outer block then returns this incremented_hash to map
# which it uses to transform each element in the array.

# Another LS solution:

d = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

p d







