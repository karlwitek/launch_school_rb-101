# Continue code to solve Further Exploration part of last exercise. The following methods were
# LS solution methods before modification.

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

# p leading_substrings('apple')
# ["a", "ap", "app", "appl", "apple"]

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

# p substrings('apple')
# ["a", "ap", "app", "appl", "apple", "p", "pp", "ppl", "pple", "p", "pl", "ple", "l", "le", "e"]

def clean_up_substring(any_char_string)
  clean_string = ''
  any_char_string.chars.each do |char|
    if char =~ /[a-zA-Z\d]/
      clean_string << char
    end
  end
  clean_string
end

def palindrome?(string)
  clean_string = clean_up_substring(string)
  clean_string.downcase == clean_string.downcase.reverse && clean_string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

# Further:  Can you modify this method(and/or its predecessors) to ignore non-alphanumeric characters
# and case?
# added method to check substring as if the non-alphacharacters were not there. Called this method in 
# palindrome? 


p palindromes('abba')  # ["abba", "bb"]
p palindromes('a%$bb#a') # ["a%$bb#a", "%$bb", "%$bb#", "$bb", "$bb#", "bb", "bb#"]

