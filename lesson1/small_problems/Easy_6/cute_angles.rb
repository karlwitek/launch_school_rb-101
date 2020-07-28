# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a string that represents that angle
# in degrees, minutes, seconds.

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.floor
  dec_for_minutes = angle % degrees
  minutes_as_float = dec_for_minutes * 60
  minutes = minutes_as_float.floor
  dec_for_seconds = minutes_as_float % minutes
  seconds_as_float = dec_for_seconds * 60
  seconds = seconds_as_float.floor

  puts degrees
  puts dec_for_minutes
  puts minutes_as_float
  puts minutes
  puts dec_for_seconds
  puts seconds_as_float
  puts seconds

  puts "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""
 
end


puts dms(45.655)
