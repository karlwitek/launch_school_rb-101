# Write a method that will take a short line of text , and print it
# within a box.

def print_in_box(text)
  puts '+' + '-' * (text.size + 4) + '+'
  puts '|' + ' ' * (text.size + 4) + '|'
  puts '|' + '  ' + text + '  ' + '|'
  puts '|' + ' ' * (text.size + 4) + '|'
  puts '+' + '-' * (text.size + 4) + '+'
end


# print_in_box('hello')
# print_in_box('This is in a box. a big box ')
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

# print_in_box2('This is the Launch School solution')

# Further Exploration: truncate the message if the message is too wide(80 columns
# including the box).  2. Try word-wrapping long messages so that they appear on
# multiple lines still within the box.

def word_wrap(text, length_of_line)
  array = []
  counter = 0
  num_of_lines, last_line_char = text.size.divmod(length_of_line)

  0.upto(num_of_lines) do
    if counter == num_of_lines
      array << text.slice!(0, last_line_char)
    else
      array << text.slice!(0, length_of_line)
    end
    counter += 1
  end
  array.each do |word|
    if word.size < length_of_line
      puts "| #{word + ' ' * (length_of_line - word.size)} |"
    else
    puts "| #{word} |"
    end
  end
end

def print_in_box3(message, length_of_line)
  horizontal_rule = "+#{'-' * (length_of_line + 2)}+"
  empty_line = "|#{' ' * (length_of_line + 2)}|"

  puts horizontal_rule
  puts empty_line
  word_wrap(message, length_of_line)
  puts empty_line
  puts horizontal_rule
end

puts print_in_box3('This is a very long string, going to write as many characters as I can stand.' \
                  '  Still not done. This string is very long.  Ruby is cool and challenging to learn.' \
                  '  I have to keep studying long into the night.', 21)


