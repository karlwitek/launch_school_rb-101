# 1. What is expected when the greeting variable is 
# referenced in the last line?

if false
  greeting = 'hello world'
end

puts greeting
# greeting is nil here. No error is thrown(undefined method or local
# variable) . Typically will raise this exception. However, when you 
# initialize a local variable within an if block, even if that if block
# doesn't get executed, the local variable is initialized to nil.

# 2. What is the result of the last line of code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # 'hi there'
puts greetings

# my answer: { a => 'hi there'}  hashes can be modified
# Correct. informal_greeting is a reference to the original
# object.  The String#<< method modifies the object that called it.
# The original object was changed, impacting the value in greetings.
# If we wanted to only modify informal_greeting but not greetings, 
# there are 2 options: initialize informal greeting with a reference
# containing the same value by: informal_greeting = greetings[:a].clone
# Or use string concatenation: informal_greeting = informal_greeting +
# ' there'.  This returns a new String object instead of modifying the
# original object.

# 3. (not copied) How the scope of variables affects the modification of
# one 'layer' when they are passed to another.
# first 2/3 there is no change in the values because reassignment is 
# happening within the method definition.
# The third part calls .gsub! on each variable within the method.
# The local variables inside the method are aliases of the variables
# being passed in and .gsub! is a mutating method performed on a string.
# the original variables (in outer scope) are changed also because
# both variables (inner and outer) are references pointing at the same 
# object.  (me)

# 4.
# Fix the following code that determines if an input string is an IP
# address representing dot separated numbers. Use the method
# is_an_ip_number? that determines if a string is a numeric string 
# between 0 and 255 as required for IP numbers.
# Currently the code does not return a false condition and is not
# handling the case that there are more or fewer than 4 components to 
# IP address. (e.g. 4.5.5 or 1.2.3.4.5 should be invalid)

# attempt to write my own is_an_ip_number? method:

def is_an_ip_number?(str_num)
  num = str_num.to_i
  if num >= 0 && num <= 255
    true
  else
    false
  end
end

# original code in exercise:

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split('.')
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end


# cannot test this method without writing the code for is_an_ip_number?
# LS -->
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

puts dot_separated_ip_address?('2.34.45.6')

puts dot_separated_ip_address?('34.45.6.3444')

# works with my method is_an_ip_address?
# LS solution starting on line 79.
