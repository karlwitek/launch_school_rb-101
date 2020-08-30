# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort
# algorithm as described.  Note that your sort will be 'in place', that is, you will mutate the 
# Array passed as an argument.  You may assume that the Array contains at least 2 elements.

def bubble_sort!(array)
  n = array.length

  loop do
    swapped = false

    1.upto(n - 1) do |i|
      if array[i -1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      end
    end
    break if swapped == false
  end
end

a = [5,3,2,7,1]
words = ['car', 'dog', 'apple', 'zebra', 'house']
p bubble_sort!([4,3])
bubble_sort!(a)
bubble_sort!(words)
p a
p words

# nil
# [1, 2, 3, 5, 7]
# ["apple", "car", "dog", "house", "zebra"]

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# true
# true
# true

# my solution is returning the array.  May change it to return nil to match LS solution.
# (Array is mutated.)

# LS -->

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

arr = [8, 5, 3, 6, 1, 5]
bubble_sort!(arr)
p arr # [1, 3, 5, 5, 6, 8]

# Our outer loop handles the task of repeating iterations until the Array is completely sorted.
# It terminates the first time we iterate through all comparisons without making any swaps, which
# we keep track of through the swapped variable.
# The inner loop takes care of looking at every pair of consecutive elements and swapping them if
# the first element of a pair is greater that the second.  We use the usual ruby idiom for 
# swapping two values.
# Further: Note that we did not use the optimization suggested on the Wiki page that skips looking
# at tail elements that we know are already sorted.  If your solution also skipped this
# optimization, try modifying your solution so it uses that optimization.

def bubble_sort!(array)
  n = array.length

  loop do
    swapped = false

    1.upto(n - 1) do |i|
      if array[i -1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      end
    end
    n -= 1
    break if swapped == false
  end
end

arr = [6, 8, 9, 2, 4, 1, 10]
bubble_sort!(arr)

puts '==============='
p arr

# ===============
# [1, 2, 4, 6, 8, 9, 10]
# method optimized by reducing the value of n by 1 after each pass.  Does not compare the n - 1 item
# when running for the nth time.

