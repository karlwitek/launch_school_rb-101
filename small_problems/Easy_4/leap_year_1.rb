# Write a method that takes any year greater than 0 as input, and returns true
# if the year is a leap year, false if not.
# leap year occur in every year that is evenly divisible by 4, unless the 
# year is also divisible by 100. If the year is evenly divisible by 100,
# then it is not a leap year unless the year is evenly divisible by 400.

def leap_year?(year)
  if year % 100 == 0 && year % 400 == 0
    return true
  elsif year % 4 == 0 && !(year % 100 == 0)
    return true
  else
    false
  end
end

puts leap_year?(8) # true
puts leap_year?(100) # false
puts leap_year?(400) # true
puts leap_year?(401) # false
puts leap_year?(25004) # true
#  Works.  LS below

def leap?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts leap?(2002)
puts leap?(2000)
puts leap?(1996)

# shorter version

def leap_year(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

puts leap_year(8)
puts leap_year(2001)

# Further Exploration
# answer to the first question is multiples of 400 will return
# false, when it should be true.

# Rewrite with the conditionals in the opposite order.

def leap_yr(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 400 == 0
    true
  else
    false
  end
end

puts '-------------------'
puts leap_yr(2000)
puts leap_yr(4)
puts leap_yr(2001)
puts leap_yr(100)

    