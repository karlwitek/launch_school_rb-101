arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
  y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# Want to print an array of numeric strings in reverse numerical order. However, the output is
# wrong. Without removing any code, fix so we get the expected output.

arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

arr = ["9", "8", "7", "10", "11"]
new_arr = arr.sort do |x, y|
  y.to_i <=> x.to_i
  end

p new_arr

# LS -->
#  p(
#   arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end
# )

# solution 2:

# p arr.sort { |x, y| y.to_i <=> x.to_i }

# The main reason why the output was unexpected is because when you use do..end block, p and 
# arr.sort bind more tightly (to each other) due to Ruby's precedence rules, so you are passing
# the block to the return value of p arr.sort.  It's as though you wrote:

# (p arr.sort) do |x,y|
#   y.to_i <=> x.to_i
# end

# (In the original code) The block is ignored since the return value of p arr.sort is not
# a method call.
# One way to get around this precedence issue is to use parentheses as in Solution 1. You can
# also use braces instead of do..end as in solution 2.
# The Ruby docs does have information on precedence, but this particular behavior isn't covered
# very well. This is common issue.

