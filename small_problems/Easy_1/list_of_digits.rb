## method with one argument, positive integer and returns
## a list of digits in the number

def digit_list(num)
  p num.to_s.split('')
end

digit_list(765) # ["7", "6", "5"] , don't want strings

## solution
def list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    p digits
    break if number == 0
  end
  p digits
end

list(6543)
## chops off digits from the end, adds to array.
## divmod divides by 10, returns two values. the result of 
## performing integer division and the remainder. The remainder is 
## 'unshifted' to the front of the array.

## second solution
def dig_list(numbers)
  numbers.to_s.chars.map(&:to_i)
end

p dig_list(8765)
## convert the number(numbers) to a string.  then split into an
## array of numeric characters.  Want an array of numbers, not strings.
## Enumerable #map used .  chars is parameter. Necessary. Has to be 
## chars. 
##  (&:to_i)  is same as
##  something.map { |char| char.to_i }

## my own variation 
def  my_list(n)
  n.to_s.chars.map(&:to_i)
end

p my_list(98765)



