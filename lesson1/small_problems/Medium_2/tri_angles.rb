# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol
# :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute,
# obtuse, or invalid triangle.  
# You can assume integer valued angles (no floating point errors), and the arguments are
# specified in degrees.

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  largest_angle = angles.max

  case
  when angles.sum != 180, angles.include?(0)
    :invalid
  when largest_angle > 90
    :obtuse
  when largest_angle == 90
    :right
  else
    :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid

# true
# true
# true
# true
# true

# LS -->

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

puts triangle(45, 45, 90)
puts triangle(30, 30, 120)
puts triangle(30, 30, 130)
puts triangle(60, 70, 50)

# right
# obtuse
# invalid
# acute
