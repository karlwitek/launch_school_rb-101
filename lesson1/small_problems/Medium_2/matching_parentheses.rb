# Write a method that takes a string as an argument, and returns true if all parentheses in the string
# are properly balanced, false otherwise. To be properly balanced, parintheses must occur in 
# matching '(' and ')' pairs.  Must start with a '(' not a ')'.

def balanced?(string)
  first_found = string.match(/[(|)]/).to_s
  if first_found == ')'
    return false
  end
  left = string.count('(')
  right = string.count(')')
  last_left_index = string.rindex('(')
  last_right_index = string.rindex(')')
  if last_left_index != nil && last_right_index != nil
    if last_left_index > last_right_index
      return false
    end
  end

  if left == right
    return true
  else
    return false
  end
end

# puts balanced?('(a)aa(bb)')
puts balanced?('What (is) this?')
puts balanced?('What is) this?')
puts balanced?('What (is this?')
puts balanced?('((What) (is this))?')
puts balanced?('((What)) (is this))?')
puts balanced?('Hey!')
puts balanced?(')Hey!(')
puts balanced?('What ((is))) up(')

# true
# false
# false
# true
# false
# true
# false
# false

# LS -->

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

puts ' ====================== '
puts balanced?('What (is) this?')
puts balanced?('What is) this?')
puts balanced?('What (is this?')
puts balanced?('((What) (is this))?')
puts balanced?('((What)) (is this))?')
puts balanced?('Hey!')
puts balanced?(')Hey!(')
puts balanced?('What ((is))) up(')

# A string is balanced if for each parenthesis we have a matching parenthesis.  We can keep track
# of this keeping a tally of the total parentheses count.  Left parentheses are +1 and right
# parentheses are -1. If our string is balanced, then the total, parens, will always be zero after
# parsing string.  Notice how we have break if parens < 0.  This is used to account for cases where 
# a right parenthesis occurs before a left parenthesis, and that right parenthesis doesn't have a
# matching left parenthesis.  If we should ever have a negative value for parens, then we know that
# our left and right parentheses are reversed, and that isn't a balanced string.

# Further:  There are a few other characters that should be matching as well.  Square brackets and
# curly brackets normally come in pairs.  Quotation marks(single and double) also typically come
# in pairs and should be balanced.  Can you expand this method to take into account those 
# characters?

def balanced?(string)
  parens = 0
  curly_braces = 0
  square_brackets = 0
  single_quotes = 0
  double_quotes = 0

  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    curly_braces += 1 if char == '{'
    curly_braces -= 1 if char == '}'
    square_brackets += 1 if char == '['
    square_brackets -= 1 if char == ']'
    single_quotes += 1 if char == "'"
    double_quotes += 1 if char == '"'

    break if (parens < 0 || curly_braces < 0 || square_brackets < 0) 
  end

  parens.zero? && curly_braces.zero? && square_brackets.zero? && single_quotes.even?\
  && double_quotes.even?

end

puts '================'
puts balanced?('[hello]') # true
puts balanced?('[{hello}]') # true
puts balanced?('(h)[e]{ll}"o"') # true
puts balanced?('[hello}]{not true') # false
puts balanced?('"hello\'" there\'') # true (mixed order still true)

