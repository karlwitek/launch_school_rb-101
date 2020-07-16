def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 != 0 && year % 4 == 0
    true
  else 
    false
  end
end

puts leap_year?(40)
puts leap_year?(100)
puts leap_year?(2000)
puts leap_year?(2002)

# LS -->
def leap?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else year % 4 == 0
    true
  end
end

# Again
def leap_year2?(year)
  (year % 400 == 0 ) || ( year % 4 == 0 && year % 100 != 0)
end

puts leap_year2?(2000)
puts leap_year2?(2001)

# part 2 (before 1752, any year / 4 was a leap year)

def leap_year3?(year)
  if year < 1752
    if year % 4 == 0
      true
    else
      false
    end
    
  elsif year >= 1752
    if (year % 400 == 0 ) || ( year % 4 == 0 && year % 100 != 0)
      true
    else
      false
    end
  end
end


puts '============='
puts leap_year3?(200)
puts leap_year3?(1752)
puts leap_year3?(2000)
puts leap_year3?(1800)

# LS -->
def leap_year4?(year)
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

puts '=============='
puts leap_year4?(60)
puts leap_year4?(1800)
puts leap_year4?(2000)