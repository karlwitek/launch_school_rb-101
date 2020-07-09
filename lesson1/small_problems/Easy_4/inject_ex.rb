# Experimenting with #inject

array = [1, 2, 3, 4, 5, 6]
total = 0
new_arr = array.inject([]) do |result, element|
  total += element
  result << total
  #result
end

p new_arr

longest = %w( elephant sheep dog).inject do |memo, word|
  memo.length > word.length ? memo : word
end
puts longest # elephant

array = [['a', '1'], ['b', '2'], ['c', '3'], ['d', '4']]

hash = array.inject({}) do |memo, values|
  memo[values.first] = values.last
  memo
end

p hash
puts '================'

hash2 = array.inject({}) do |memo, (key, value)|
  memo[key] = value
  memo
end

p hash2

puts '=============='

array2 = [1, 2, 3, 4, 5, 6]
array5 = [2, 3, 4]

array3 = array2.inject { |result, elem| elem * 2 }
p array3 #  12 (last number * 2)

arr4 = array5.inject { |result, elem| result * elem }

puts '=============='
p arr4 # 24
