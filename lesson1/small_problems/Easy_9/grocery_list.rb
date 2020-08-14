# Write a method which takes a grocery list(array) of fruits with quantities and converts it
# into an array of the correct number of each fruit.

def list_of_fruit(array)
  list = []
  array.each do |arr|
    count = arr[1]
    count.times do
      list << arr[0]
    end
  end
  list
end

quantities = [['apples', 3], ['orange', 1], ['bananas', 2]]
p list_of_fruit(quantities)

#  ["apples", "apples", "apples", "orange", "bananas", "bananas"]

# LS -->

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

p buy_fruit(quantities)
# another LS solution:

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit(quantities)

# In our first solution, we define a new array expanded_list and then iterate over the array
# passed in as an argument.  For each subarray, we grab the quantity and the name of the 
# fruit by using index reference and push each string the required number of times into our
# new array.  We use Integer#times method in order to execute the content of the block for
# the number of times specified by the caller, here quantity. On each iteration the block is 
# executed and the fruit string is appended to our expanded_list. Note that we could use
# the block parameter to access each element of the subarrays, like this:
# list.each do |fruit, quantity|
# quantity.times { expanded_list << fruit }
# end

# The second solution is more compact.  We use map in order to return a transformation of the
# array passed in as an argument.  Here again we use the block parameters to access each element
# of the subarrays.  We realize that we want to multiply each fruit by the given quantity.
# if we try this: fruit * quantity => 'applesapplesapplea'.  Not what we want. We want an array
# containing the required quantity of each fruit as separate strings.
# [fruit] * quantity => ['apples', 'apples', 'apples'].  Now we have an array containing all
# of our fruits in nested subarrays. Call Array#flatten to reduce it down to a single large array.

