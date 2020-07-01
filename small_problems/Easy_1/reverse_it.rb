# Write a method that takes one argument, a string,
# and returns a new string with the words in
# reverse order.

def reverse(string)
  arr = string.split
  new_arr = []
  loop do
    reversed_word = arr.pop
    new_arr.push(reversed_word)
    break if arr.length == 0
    end
  new_string = new_arr.join(' ')
end

puts reverse('first second third fourth')

puts reverse('cat dog') == 'dog cat'

puts reverse('one two three')  == 'three two one'

# Works!!  LS solution below

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('hello world')

puts reverse_sentence('car house') == 'house car'

 