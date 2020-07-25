# Given a string of some words (all lowercased) and an assortment
# of non-alphanumeric characters, write a method that returns a 
# string with all of the non-alphanumeric characters replaced by
# spaces.  The resulting string should not have consecutive spaces.

def clean_up(string)
  arr = string.split
  final_arr = []
  new_arr = arr.map do |word|
    word.scan(/\w/).join
  end
  new_arr.each do |word|
    if word != ""
    final_arr << word
    end
  end
  final_arr.join(' ')
end

p clean_up('all words')
p clean_up('all $% --- words  and &^% char')
# works .. LS -->

ALPHABET = ('a'..'z').to_a

def clean_up2(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

    clean_chars.join
end

  p clean_up2('launch $# school$#@-- solution')

def clean_up3(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p clean_up3('this $#@ is #@solution#$  three')

