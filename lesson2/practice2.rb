
arr = [1, 2, 3]

def test(a)
  a.map do |num|
    num + 1
  end
end

#p test(arr)

# test with p a.map do ...
# returns the Enumerator two times

def test(b)
  p b.map { |num| num + 1 }
end

#puts '==========='
#p test(arr)

# test with p b.map do ..
# returns a new array [2, 3, 4] two times
# A {} binds more tightly to b.map
# The return value of b.map gets passed to p.

# puts '================'
mapped_array = arr.map { |num| num + 1 }
#mapped_array.tap { |val| p val }

mapped_and_tapped = mapped_array.tap { |val| p 'hello' }
p mapped_and_tapped

puts '============='

(1..10)               .tap { |n| p n }
.to_a                 .tap { |n| p n }
.select{ |n| n.even? }.tap { |n| p n }
.map { |n| n*n }      .tap { |n| p n }

# One other use for this method is to debug intermediate objects
# in method chains.  Can see the transformation done and the 
# resulting object at every step by using .tap

puts '=================='
puts '=================='

def test(b)
  b.map! { |letter| "I like #{letter}"}
end
a = ['a', 'b', 'c']
p test(a)
p a
