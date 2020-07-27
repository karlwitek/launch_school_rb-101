# Write a method that takes an array of integers between 0 & 19,
# and returns an array of those integers sorted based on the 
# English words for each number.

array_of_integers = (0..19).to_a

INTEGERS_AS_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six',
                     'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
                     'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
                     'eighteen', 'nineteen']

def alpha_numbers(array)
  unsorted_array = []
  new_array =[]
  array.each_with_index do |num, index|
    unsorted_array << INTEGERS_AS_WORDS[index]
  end
  unsorted_array.sort.each do |word|
    new_array << INTEGERS_AS_WORDS.index(word)
  end
  new_array
end
p alpha_numbers(array_of_integers)


p alpha_numbers(array_of_integers)
p alpha_numbers([1, 2, 3, 4, 5])

# correct output..   LS -->

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten
                  eleven twelve thirteen fourteen fifteen sixteen
                  seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a)

# Read the docs for Enumerable#sort_by, and construct a call that sorts the
# numbers by each number's corresponding english name.



