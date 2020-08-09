# Modify the method from the previous exercise so it ignores non-alphabetic characters when
# determining whether it should uppercase or lowercase each letter.  The non-alphabetic
# character should still be included in the return value; they just don't count when
# toggling the desired case.

def staggered(string)
  result = ''
  need_upcase = true
  string.chars.each do |char|
    if need_upcase
      result += char.upcase
    else
      result += char.downcase
    end
    need_upcase = !need_upcase
  end
  result
end

puts staggered('hello world')

# HeLlO WoRlD

# wrote method based on previous exercise.  Now, modify according to this exercise:

def stagger(string)
  result = ''
  counter = 0
  string.chars.each do |char|
    if char =~ /[a-zA-Z]/ && counter.even?
      counter += 1
      result += char.upcase
    elsif char =~ /[a-zA-Z]/ && counter.odd?
      counter += 1
      result += char.downcase
    else
      result += char
    end
  end
  result
end

puts stagger('s3ssss4AAAAA')
puts stagger('this 34 string contains spaces and 56 numbers')

# S3sSsS4aAaAa
# ThIs 34 StRiNg CoNtAiNs SpAcEs AnD 56 nUmBeRs
# works.. LS -->

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

puts staggered_case("another 555 launch school 88 solution")

# AnOtHeR 555 lAuNcH sChOoL 88 sOlUtIoN

# My Note:
# In my solution the character is concatenated onto result without incrementing the counter
# if the character is not a letter.
# This enables the program to only count the letters.
# In the LS solution, the need_upper boolean variable is NOT toggled when the character is 
# non-alphabetic. This has the same effect as not incrementing the counter in my solution.

# LS summary:
# This solution is very similar to the previous solution; the only difference is that we need
# to avoid changing need_upper when processing non-alphabetic characters. We use a simple
# regular expression with /i flag(ignore case) to detect letters.

# Further:   Modify this method so the caller can determine whether non-alphabetic characters
# should be counted when determining the upper/lowercase state.  That is, you want a method that
# can perform the same actions that this method does, or operates like the previous version.


def staggered_case(string, letters_only = true)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      if letters_only
        result += char
      else
        need_upper = !need_upper
        result += char
      end
    end
  end
  result
end

puts '========= further ==========='
puts staggered_case('a string for fur5ther')
puts staggered_case('a string for fur5ther', false)

# A sTrInG fOr FuR5tHeR
# A StRiNg fOr fUr5tHeR

