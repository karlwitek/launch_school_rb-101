def what_century(year)
  if year > 100 && year % 100 == 0
    century = year / 100
  else 
    century = year / 100 + 1
  end
end

def display_century(year)
  h = { 0 => 'th', 1 => 'st', 2 => 'nd', 3 => 'rd',
        4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th',
        8 => 'th', 9 => 'th' }
  t = { 11 => 'th', 12 => 'th', 13 => 'th' }
  
  century = what_century(year)
  last_digit = century % 10

  if t.has_key?(century)
    "#{century}#{t[century]}"
  else
    "#{century}#{h[last_digit]}"
  end
end


puts display_century(6)
puts display_century(1234)
puts display_century(1900)
puts display_century(1901)
puts display_century(22345)

# again with LS -->
def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)

  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def what_century2(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

puts what_century2(50)
puts what_century2(1900)
puts what_century2(1901)
puts what_century2(1234)

