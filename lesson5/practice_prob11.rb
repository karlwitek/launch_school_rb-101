# Given the following data structure use a combination of methods, including either
# select or reject method, to return a new array identical in structure to the 
# original but containing only the integers that are multiples of 3.


arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

a = arr.map do |array|
  array.map do |num|
    if num % 3 == 0
      num
    else
      '-'
    end
  end
end


p a
# [["-"], [3, "-", "-"], [9], ["-", "-", 15]]  . I chose to return '-' instead of nil.
# Tried to return same data structure. Forgot to use .select
# LS -->

b = arr.map do |element|
  element.select do |num|
    num % 3 == 0
  end
end

p b

# Again with .reject

c = arr.map do |el|
  el.reject do |num|
    num % 3 != 0
  end
end

p c
# Using reject with != is sort of a double negative.  Also select with ==
# is easier to parse.



