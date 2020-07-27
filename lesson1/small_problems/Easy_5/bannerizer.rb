# Write a method that will take a short line of text , and print it
# within a box.

def print_in_box(text)
  puts '+' + '-' * (text.size + 4) + '+'
  puts '|' + ' ' * (text.size + 4) + '|'
  puts '|' + '  ' + text + '  ' + '|'
  puts '|' + ' ' * (text.size + 4) + '|'
  puts '+' + '-' * (text.size + 4) + '+'
end


print_in_box('hello')
print_in_box('This is in a box. a big box ')
# works. LS -->

def print_in_box2(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box2('This is the Launch School solution')

# Further Exploration: truncate the message if the message is too wide(80 columns
# including the box).  2. Try word-wrapping long messages so that they appear on
# multiple lines still within the box.

