# Write a method that takes a first name, a space, and a last name passed as a single
# String argument, and returns a string that contains the last name, a comma, a space,
# and the first name.

def format_name(full_name)
  formatted_name = ''
  array = full_name.split
  formatted_name << "#{array[1]}, #{array[0]}"
end

puts format_name('Joe Biden') # Biden, Joe

# LS -->

def swap_name(name)
  name.split(' ').reverse.join(', ')
end

puts swap_name('Barack Obama')

# Used Array#reverse on the array returned by String#split. Also use Array#join(', ') 
# to get the final result.



