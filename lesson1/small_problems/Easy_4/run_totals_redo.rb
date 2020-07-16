def running_total(array)
  sum = 0
  new_array = []
  array.each do |element|
    sum += element
    new_array << sum
  end
  new_array
end

p running_total([1, 2, 3, 4, 5])
# works. again
# LS -->  ( Using .map )

def run_total(array)
  sum = 0
  array.map { |num| sum += num }
end

p run_total([1, 2, 3, 4, 5])

# Try solving with #Enumerable#each_with_object or 
# Enumerable#inject

# w/ each_with_object

def totals(array)
  array.each_with_object([]) do |elem, memo|
    if memo.empty?
      memo << elem
    else
      memo << memo.last + elem
    end
  end
end


puts '==============='
p totals([1, 2, 3, 4, 5])


