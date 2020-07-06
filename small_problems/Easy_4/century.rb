# Write a method and takes a year as input and returns the
# century.  The return value should be a string that
# begins with the century number, and ends with st,
# nd, rd, th as appropriate for that number.

def century(year)
  if year % 100 == 0
    c = year / 100
  else
    c = (year / 100) + 1
  end

  h = { 0 => 'th', 1 => 'st', 2 => 'nd', 3 => 'rd',
      4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th',
      8 => 'th', 9 => 'th' }
  t = { 11 => 'th', 12 => 'th', 13 => 'th'}

  digit = c % 10
  if c == 11 || c == 12 || c == 13
    "#{c}#{t[c]} century"
  else
    "#{c}#{h[digit]} century"
  end
end

puts century(45)
puts century(2000)
puts century(2001)
puts century(22456)
puts century(1292)
puts century(1192)

## works.  LS below

def century2(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

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

puts century2(50)
puts century2(1998)
puts century2(3000)
puts century2(3001)
