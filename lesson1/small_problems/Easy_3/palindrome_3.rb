# Write a method that returns true if its integer
# argument is palindromic, false otherwise.

def palindromic_number(num)
  number = num.to_s
  number == number.reverse
end

puts palindromic_number(3456)
puts palindromic_number(1223221)

# works. LS below

# def palindromic_number?(number)
#   palindrome?(number.to_s) ## using palindrome? method from first ex
# end

puts palindromic_number(004400)

# Further Exploration
## If the argument starts with one or more zeros, it doesn't work.
#  fix?



