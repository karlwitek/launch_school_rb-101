#  Experiment code to visualize passing a copy of the
# reference.

a = %w(1 2 3 4 5)

puts "array a id is: #{a.object_id} "
puts "a sub 0 id is:  #{a[0].object_id} "

b = []
puts "array b id is: #{b.object_id} "

for i in (0..4) do 
  b << a[i]
end

p b

puts "array b after << id : #{b.object_id} "
puts "b sub 0 id is : #{b[0].object_id} "

b.shift
p b
puts "array b after shift is: #{b.object_id} "

c = b
puts " array c id is: #{c.object_id} "
puts "b sub zero is : #{b[0].object_id} "
puts "c sub zero is : #{c[0].object_id} "

b[0] = '99'
puts "b sub 0 is : #{b[0].object_id} "
puts "c sub 0 is: #{c[0].object_id} "

puts a[0]
puts "array b is : #{b.object_id} "
