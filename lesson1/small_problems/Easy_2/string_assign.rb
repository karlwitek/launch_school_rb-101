## This exercise consists of looking at sample code and
# answering questions.

name = "Bob"
save_name = name
name = "Alice"
puts name, save_name

# Alice
# Bob 

name = "Joe"
saved_name = name
name.upcase!
puts name, saved_name
# JOE
# JOE

# Both name and saved_name point to the same string.
# When name.upcase! is applied, it mutates Joe in place,
# the value that saved_name references also changes.


