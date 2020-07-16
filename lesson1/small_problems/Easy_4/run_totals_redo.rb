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

# w/ .inject

def totals(array)
  array.inject([]) do |result, elem|
    if result.empty?
      result << elem
    else
      result << result.last + elem
    end
  end
end


puts '==============='
p totals([1, 2, 3, 4, 5])

# again with .each_with_object

def r_tot(array)
  array.each_with_object([]) do |elem, result|
    if result.empty?
      result << elem
    else
      result << result.last + elem
    end
  end
end

puts '=============='
p r_tot([1, 2, 3, 4, 5])

