# Write a method named xor that takes two arguments
# and returns true of exactly one of its arguments
# is truthy, false otherwise.

def xor(arg1, arg2)
  if arg1 == true && arg2 == false
    return true
  elsif arg1 == false && arg2 == true
    return true
  else
    false
  end
end

puts xor(2.even?, 7.even?)

# works. LS below

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

puts xor?(3.even?, 2.even?)

# Returns true if exactly one of the values is truthy, otherwise
# it returns false.  The explicit false return isn't actually 
# necessary since 'return true if ...' returns nil if the condition
# is falsey.  However, methods whose name ends in a ? should usually
# only return the explicit true and false values.

#  A shorter version

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

# ^ operator is a ruby bit-wise operator for performing exclusive-or
# bit operations.  In some cases, this means that ^ can be used as
# an exclusive-or operator.  However, this only works properly when both
# operands are the same type.  For this reason, you should not use ^
# as a boolean xor operator.

