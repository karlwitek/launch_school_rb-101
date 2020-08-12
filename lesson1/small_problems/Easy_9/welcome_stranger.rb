# Create a method that takes 2 arguments, an array and a hash.  The array will contain 2 or more
# elements, when combined with adjoining spaces, will produce a person's name.  The hash will
# contain two keys, :title and :occupation, and the appropriate values.  Your method should return
# a greeting that uses the person's full name, and mentions the person's title and occupation.

def greeting(array, hash)
  "Hello, #{array[0]} #{array[1]} #{array[2]}! How long have you been a #{hash[:title]} #{hash[:occupation]}?"
end

puts greeting(['Karl', 'A', 'Witek'], { title: 'Journeyman', occupation: 'Painter'})
# Hello, Karl A Witek! How long have you been a Journeyman Painter? 
# (not any more)
# works.  LS -->

# solution is same except use #{name.join(' ')} to get the full name. (Variable name passed in
# for the array and hash..  greeting(name, status)).
# Further: This method doesn't pass rubocop.  What is the best way to shorten the lines
# so it doesn't exceed the 80 maximum characters to a line?
# (my solution)

def greeting(array, hash)
  "Hello, #{array[0]} #{array[1]} #{array[2]}! How long have" +
  " you been a #{hash[:title]} #{hash[:occupation]}?"
end

puts greeting(['Karl', 'A', 'Witek'], { title: 'Journeyman', occupation: 'Painter'})

# used '+'

def greeting(array, hash)
  "Hello, #{array[0]} #{array[1]} #{array[2]}! How long have\
 you been a #{hash[:title]} #{hash[:occupation]}?"
end

puts greeting(['Karl', 'A', 'Witek'], { title: 'Journeyman', occupation: 'Painter'})

# used \   (any indention of next line will show up) Prefer using '+' . The code is more readable.
