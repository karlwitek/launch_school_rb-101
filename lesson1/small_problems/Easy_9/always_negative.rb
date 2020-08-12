# Write a method that takes a number as an argument.  If the argument is a positive number, 
# return the negative of that number.  If the number is 0 or negative, return the original
# number.

def make_negative(number)
  if number > 0
    number - (number.abs * 2)
  else 
    number
  end
end

puts make_negative(0)
puts make_negative(-12)
puts make_negative(20)

# 0
# -12
# -20

# another way:

def make_negative(number)
  if number > 0
    number - (-number * -2)
  else
    number
  end
end

puts make_negative(-19) # -19
puts make_negative(19) # -19

# LS -->

def negative(number)
  number > 0 ? -number : number
end

puts negative(0)
puts negative(34)

# There are only two choices here.  Either make the number negative and return it or return the 
# already negative number.  Perfect for a ternary.  Checks if num > 0, if so, make it negative
# and return it.  Another way:

def negative(number)
  -number.abs
end

# This solution straightaway converts the number to a positive number with Numeric#abs and then
# prepends it with a negative operator to make it negative.  abs returns the absolute value of 
# a number.   Thus, instead of checking the value and proceeding based on the evaluation, the 
# opposite can be applied by stripping it of its sign, then giving it the negative sign.
# This is shorter.  However, is it superior? ?

puts negative(0) # 0

