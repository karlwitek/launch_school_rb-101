# Write a method that takes an array of strings and returns an array of the same
# string values, except with the vowels removed.

def remove_vowels(string)
  string.delete('[aeiou]+[AEIOU]+')
end


puts remove_vowels('apple')
puts remove_vowels('aaaeeejjjjjffffiiibbbooo')
# works but code is not taking an array of strings. redo

def remove_vowels2(array_of_strings)
  vowels = 'aeiouAEIOU'
  array_of_strings.map do |string|
    string.delete(vowels)
  end
end

p remove_vowels2(['apple', 'orange'])
p remove_vowels2(%w(aaajjjjeeejjjjfffiiooggoogg))
p remove_vowels2(%w(GAA AEIOU HJU))
# ["ppl", "rng"]
# ["jjjjjjjjfffgggg"]
# ["G", "", "HJ"]
# works.  LS -->

def remove_vowels3(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

p remove_vowels3(['ghgh' 'aeiou'  'apple'])
p remove_vowels3(%w(ghgh aeiou apple))
# ["ghghppl"]  No "" for middle string. ?
# ["ghgh", "", "ppl"]  Is "" when using %w()
