## write a method that counts the number of occurences of each
## element in a given array
## Are case sensitive. Output , each element along with number
## of occurences.



def count_occurences(array)
  hash = {}
  array.each do |item|
    if hash.has_key?(item)
      hash[item] += 1
    else
      hash[item] = 1
    end
  end
  hash.each {|item, count| puts "#{item} => #{count}"}
end

count_occurences(['car', 'dog', 'car', 'cat', 'dog', 'car', 'fish'])
## my solution above.  works !!!
## LS solution

def count_occur(arr)
  occurences = {}

  arr.uniq.each do |element|
    occurences[element] = arr.count(element)
    puts occurences # test, first puts is {"car" => 3}
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occur(['car', 'dog', 'car', 'cat', 'dog', 'car', 'fish'])

## Iterate over EACH UNIQUE element, create a new key/value pair
## in occurences, with the key as the element's value.  Use Array#count
## to count the number of elements with the same value.
## .uniq skips a duplicate element.  Count is still accurate
## due to .count method which counts the number of elements
## immediately.

## Further (case insensitive option)
## my solution 
def count_occurences(array)
  hash = {}
  array.each do |item_all_case|
    item = item_all_case.downcase
    if hash.has_key?(item)
      hash[item] += 1
    else
      hash[item] = 1
    end
  end
  hash.each {|item, count| puts "#{item} => #{count}"}
end

count_occurences(['car', 'dog', 'Car', 'cat', 'Dog', 'car', 'fish'])



