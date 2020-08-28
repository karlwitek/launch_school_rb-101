# Write a method that takes the length of the 3 sides of a triangle as arguments, and returns a symbol
# :equilateral, :isosceles, :scalene, :invalid depending on whether the triangle is equilateral,
# isosceles, scalene or invalid.

def triangle(side_1, side_2, side_3)
  ordered_array = [side_1, side_2, side_3].sort
  if !ordered_array.all? { |side| side > 0 }
    return :invalid
  end
  if (ordered_array[0] + ordered_array[1]) <= ordered_array[2]
    return :invalid
  end
  if (side_1 == side_2) && (side_2 == side_3)
    :equilateral
  elsif (side_1 == side_2) || (side_1 == side_3) || (side_2 == side_3)
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid

# LS -->

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

puts triangle(7, 7, 7) # :equilateral
puts triangle(3, 4, 0) # :invalid

# A triangle's two smaller sides should be greater than the length of the largest. The thing is,
# we don't know which of our sides was chosen as the largest when we call max on sides. So, to 
# check for this, we make sure that the total sum of the side lengths is greater than 2 times
# the largest side.  Another way to express this would be: largest_side > side.reduce(:+) -
# largest_side.

