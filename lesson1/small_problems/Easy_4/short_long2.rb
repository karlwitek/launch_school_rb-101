def short_long_short(str1, str2)
  if str1.length < str2.length
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

puts short_long_short('hello', 'everyone')

def short_long(s1, s2)
  arr = [s1, s2].sort_by { |str| str.length }
  arr.first + arr.last + arr.first
end

p short_long('hi', 'there')