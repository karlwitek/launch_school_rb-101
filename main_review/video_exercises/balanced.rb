# Write a method that takes a string, and returns a boolean indicating whether this string has a 
# balanced set of parentheses.  ex.   balancer('(hi)') => true.

def balanced?(string)
  return true if (string.count('(') + string.count(')')).even?
  false
end

puts balanced?('(stri(ng))') # true
puts balanced?('(hi') # false

# bonus: check for proper order of (). student solution:

def balancer(string)
  return false unless string.count('(') == string.count(')')

  # detect if order is correct
  paren_count = 0
  failure = false

  string.split('').each do |char|
    paren_count += 1 if char == '('
    paren_count -= 1 if char == ')'

    if paren_count < 0
      failure = true
      break
    end
  end
  !failure
end

puts balancer('(((word)))') # true
puts balancer('((word)) )(') # false

# refactor

def balancer(string)
  return false unless string.count('(') == string.count(')')

  # detect if order is correct
  paren_count = 0

  string.split('').each do |char|
    paren_count += 1 if char == '('
    paren_count -= 1 if char == ')'

    return false if paren_count < 0
  end
  true
end

puts balancer('99((gd))') # true .  A variable (flag) set to boolean would be okay also. (previous)