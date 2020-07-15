# 1 and 2 - refer to LS 
# 3. Explain what will be displayed

def tricky_method(a_string_param, an_array_param)
  a_string_param += 'rutabaga'
  an_array_param << 'rutabaga'
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my_string will look like the original. += is reassignment. 
# Also, is not the last line returned in method.
# Correct. It seems that reassignment is the reason, not being
# the last line returned. 

# LS --> The values that get passed are references to some object.
# (a string object and an array object) The method initializes a new
# local variable for both, and assigns each reference to the new local
# variables. These variables only live within the scope of the method
# definition. += is reassignment and CREATES a new string object. 
# The reference to this new object is assigned to a_string_param.
# a_string_param and my_string no longer point to the same object.
# With the << operator (on the array), Ruby keeps using the same object
# and appends the element to it. Because the local variable (an_array_param)
# and my_array are still pointing at the same object, we see the results
# 'outside' of the method.

# 4. variation of previous exercise. 
def tricky_method2(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method2(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# my answer: string = 'pumpkinsrutabaga' (<< modifies)
# array = ['pumpkins'] reassignment inside method not 
# seen outside of method.

# Correct!  LS --> (<< did mutate the string) +
# With the Array#= assignment, our literal ['pumpkins', 'rutabaga']
# array is a new object and we are assigning it to the local variable
# an_array_param.

# 5. same method as #3.  Whether the above 'coincedentally' does
# what we think we wanted 'depends' upon what is going on inside
# the method. How can it be refactored to make the result easier
# to predict and maintain? 

def tricky_method(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param << 'rutabaga'
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Inside the method, changed both operators to <<

# LS --> example of 'clever' code that depends on some
# of the less obvious traits of the language. Main point
# is don't write 'clever' code. Write explicit code that is
# easy to read, debug and modify as requirements change.

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += 'rutabaga'
  an_array_param += ['rutabaga']

  return a_string_param, an_array_param
end

my_string = 'pumpkins'
my_array = ['pumpkins']
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 6. How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == 'blue' || color == 'green'
    true
  else
    false
  end
end

# use ternary operator?
def color_valid2(color)
  (color == 'blue' || color == 'green') ? true : false
end

puts color_valid('red')
puts color_valid2('red')

# Works but still have duplication. Try again

def color_valid3(color)
  ['blue', 'green'].include?(color)
end

puts color_valid3('red')
# works. LS -->

def color_valid4(color)
  color == 'blue' || color == 'green'
end

puts color_valid4('blue')

# Review problems 1 and 2.
