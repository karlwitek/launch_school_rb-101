# Example code from 'solving coding problems with PEDAC'
# factors can be passed as an array.

def sum_of_multiples(target, factors) 
  multiples = []
  factors = [3, 5] if factors.length == 0

  factors.each do |factor|
    current_multiple = factor

    while current_multiple < target
      multiples << current_multiple
      current_multiple += factor
    end
  end
  multiples.uniq.inject(0, :+)

end

# method does not use target number as a multiple

puts sum_of_multiples(10, [1])
puts sum_of_multiples(20, [2, 4])
puts sum_of_multiples(30, [3])
