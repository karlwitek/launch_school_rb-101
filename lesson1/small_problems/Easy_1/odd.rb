## method takes one integer. may be positive, negative
## or a zero.  Returns true if the number's abs value
## is odd.

# def is_odd(number)
#   if number.abs % 2 == 0
#     return false
#   else
#     true
#   end
# end

# puts is_odd(3)
# puts is_odd(4)
# puts is_odd(-89)
# ## solution

# def is_odd?(num)
#   num % 2 == 1
# end

# puts is_odd(-8) # modulus returns a positive number
## if number on the right is positive

## try with #remainder method
## added .abs to work with negative number

def odd(number1)
  number1.abs.remainder(2) == 1
end

puts odd(-9)


