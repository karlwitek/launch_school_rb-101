# Write two methods that each take a time of day in 24 hour
# format, and return the number of minutes before and after
# midnight, respectively. Should return a value 0..1439.

def after_midnight(time_string)
  array = time_string.split(':')
  minutes = array[0].to_i * 60 + array[1].to_i
  if minutes == 1440
    0
  else 
    minutes
  end
end


puts after_midnight('00:30')
puts after_midnight('6:00')
puts after_midnight('12:30')

def before_midnight(time_string)
  1440 - after_midnight(time_string)
end

puts before_midnight('1:00')
puts after_midnight('1:00')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts after_midnight('0:00')

# works .  line 8 takes care of incorrect time of 24:00.

