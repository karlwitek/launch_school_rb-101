# Create a hash that expresses the frequency with which each
# letter occurs in this string.

statement = 'The Flintstones Rock'

hash = {}
statement.chars.each do |char|
  if hash.has_key?(char)
    hash[char] +=1
  else
    hash[char] = 1
  end
end
p hash

# works. Counts the spaces. Not the desired output. LS -->

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
# Better output. Spaces are not counted.



