# Prior to 1752, a leap year occurred every year that
# is divisible by 4. Update the previous method to 
# determine leap years before and after 1752.


def leap_year?(year)
  if year >= 1752
    if year % 400 == 0
      return true
    elsif year % 4 == 0 && !(year % 100 == 0)
      return true
    else
      false
    end
  
  elsif year % 4 == 0
    true
  else
    false
  end
end


puts leap_year?(1501)
puts leap_year?(1752)
puts leap_year?(100)
puts leap_year?(2000)
puts leap_year?(2002)

# works.  LS below

def leap_yr?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts '--------------'
puts leap_yr?(100)
puts leap_yr?(1752)
puts leap_yr?(1800)
puts leap_yr?(2000)
