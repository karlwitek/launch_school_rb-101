# Build a program that asks a user for the length and
# width of a room in meters and then displays the area of
# the room in both square meters and square feet.

# 1 sq meter = 10.7639 sq feet.

puts "Enter the length of the room (in meters)"
length = gets.chomp.to_i
puts "Enter the width of the room (in meters)"
width = gets.chomp.to_i
area_meters = length * width
area_feet = (length * width) * 10.7639
puts "The room has an area of #{area_meters} square meters or 
#{area_feet} square feet."

# works . LS below

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
      "square meters (#{square_feet} square feet)."
# .round method is a method of the float class. Rounds to the nearest
# two decimal places.  Could also use Kernel#format 
# Further Exploration
# Modify to ask for measurements in feet. Display in sq ft, inches, cm.

puts "enter length (feet) "
length_feet = gets.to_f
puts "enter width "
width_feet = gets.to_f
area_feet = (length_feet * width_feet).round(2)
CM_CONVERSION = 2.54 # cm in an inch
puts "the area in feet is #{area_feet} 
      the area in inches is #{(area_feet * 12).round(2)}
      the area in cm is #{(area_feet * 12 * 2.54).round(2)} "

