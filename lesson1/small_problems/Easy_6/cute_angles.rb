# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a string that represents that angle
# in degrees, minutes, seconds.

DEGREE = "\xC2\xB0"

  def dms(angle)
    degrees, min_as_decimal = angle.divmod(1)
    minutes_as_float = min_as_decimal * 60
    minutes, sec_as_decimal = minutes_as_float.divmod(1)
    seconds_as_float = sec_as_decimal * 60
    seconds = seconds_as_float.floor

  puts "#{degrees}#{DEGREE}#{sprintf('%02d' %minutes)}'#{sprintf('%02d' %seconds)}\""
 
end


dms(45.655)
dms(56)
dms(360)

dms(30)# == %(30°00'00")
dms(76.73)# == %(76°43'48")
dms(254.6)# == %(254°36'00")
dms(93.034773)# == %(93°02'05")
# these tests are correct.  
# LS -- >

#DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms2(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts '================='
puts dms2(34.56)
puts dms2(360)
puts dms2(0)

# starts out converting the number of degrees to seconds; this makes it easier to 
# compute the whole number of degrees, minutes and seconds. Next, use divmod to
# get the whole number of degrees, and a remainder that represents the number of 
# seconds in the fractional part of the original value.  We then use divmod
# again to split the remainder into a whole number of minutes, and a whole 
# number of seconds.

# Further Exploration: modify code so it returns a value in the appropriate range
# when the input is less than 0 or greater than 360.

def convert_input(any_value_float)
  n, degrees_remaining = any_value_float.divmod(360)
  if degrees_remaining >= 0
    degrees_remaining
  elsif
    degrees_remaining < 0
    degrees_remaining + 360
  end
end

def dms3(angle_float)
  degrees, min_as_decimal = convert_input(angle_float).divmod(1)
  minutes_as_float = min_as_decimal * 60
  minutes, sec_as_decimal = minutes_as_float.divmod(1)
  seconds_as_float = sec_as_decimal * 60
  seconds = seconds_as_float.floor

puts "#{degrees}#{DEGREE}#{sprintf('%02d' %minutes)}'#{sprintf('%02d' %seconds)}\""

end

puts '=============='
dms3(30)
dms3(360)
dms3(-370)
dms3(-730)
dms3(99900)

# Further Exploration works . Wrote a separate method to convert angle inputted
# to an appropriate number for original method. If input == 360, returns 0.
# Going to leave as is.





