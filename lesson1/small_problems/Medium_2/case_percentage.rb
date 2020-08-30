# Write a method that takes a string, and then returns a hash that contains 3 entries: 
# the percentage of lowercase letters, the percentage of uppercase letters and one 
# that is the percentage of characters that are neither.  You may assume that the string
# will always contain at least one character.

def letter_percentages(string)
  hash = {}
  lower = 0
  upper = 0
  neither = 0
  string.chars.each do |char|
    if char =~ /[a-z]/
      lower += 1
    elsif char =~ /[A-Z]/
      upper += 1
    else
      neither += 1
    end
  end
  total = lower + upper + neither
  hash['lowercase'] = sprintf("%.2f", ((lower.to_f / total) * 100)).to_f
  hash['uppercase'] = sprintf("%.2f", ((upper.to_f / total) * 100)).to_f
  hash['neither'] = sprintf("%.2f", ((neither.to_f / total) * 100)).to_f
  hash
end

p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')
p letter_percentages('aaaaBBccc 34')

# {"lowercase"=>50.0, "uppercase"=>10.0, "neither"=>40.0}
# {"lowercase"=>37.5, "uppercase"=>37.5, "neither"=>25.0}
# {"lowercase"=>0.0, "uppercase"=>0.0, "neither"=>100.0}
# {"lowercase"=>58.33, "uppercase"=>16.67, "neither"=>25.0}

# LS -->

def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  
  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

puts '======================='
puts letter_percentages('abCdef 123')
puts letter_percentages('abcdefGHI')

# First, we set up the initial part of the data we want to create.  This method is expected
# to return a hash of character ratios, hence the hash called percentages.  There's also a
# counts hash to store the number of characters for lowercase, uppercase, and neither groups.
# Storing this information will act as intermediary step towards calculating our percent
# character ratios later on.  We use the Array#count method to find the number of occurences of
# each type of character.  Then, we pass our stored counts and percentages hashes to the 
# calculate method to compute the ratios asked for by this problem.
# * Remember, hashes are a bit complex.  If you pass a hash into a method, and then alter the
# value in that hash, that altered value will then continue to persist even outside that
# method.

# Further: Create a solution to round the float numbers to two places, unless it is zero.
# 0.0 (one place for zero)

def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  
  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = ((counts[:uppercase] / length.to_f) * 100).round(2)
  percentages[:lowercase] = ((counts[:lowercase] / length.to_f) * 100).round(2)
  percentages[:neither] = ((counts[:neither] / length.to_f) * 100).round(2)
end

# .round(2) did not change the format of the value. ?
