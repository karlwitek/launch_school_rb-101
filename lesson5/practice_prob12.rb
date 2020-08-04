# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item in each
# sub array and the value is the second item.


arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}
arr.each do |array|
  hash[array.first] = array.last
end

p hash

# works:
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
# LS -->

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh
# Only have to work at the initial sub-level in order to reach a solution.
# In Ruby, any object can be a hash and any Ruby object can be a hash value.



