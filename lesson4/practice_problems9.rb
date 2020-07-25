# Replicate a Rails method 'titleize'.  It creates a string
# that has each word capitalized as it would be in a title.

words = 'the flintstones rock'
# 'The Flintstones Rock'  desired output

# puts words.capitalize  # capitalizes first word only (test)

arr = words.split.map do |word|
  word.capitalize
end

puts arr.join(' ')
# works.. LS --> (without new_str)
new_str = words.split.map { |word| word.capitalize }.join(' ')
puts new_str
