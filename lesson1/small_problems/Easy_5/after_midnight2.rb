# Write two methods that each take a time of day in 24 hour
# format, and return the number of minutes before and after
# midnight, respectively. Should return a value 0..1439.


HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

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
  delta_minutes = 1440 - after_midnight(time_string)
  delta_minutes = 0 if delta_minutes == 1440
  delta_minutes
end

puts before_midnight('1:00')
puts after_midnight('1:00')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts after_midnight('0:00')
puts before_midnight('00:00')

# changed before_midnight to address edge case of entering
# 0.
# works .  line 8 takes care of incorrect time of 24:00.
# return delta minutes in before_midnight to get correct value
# after 'if'
# LS -->


def after_midnight2(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight2(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight2(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

puts '============'
puts after_midnight2('00:34')
puts after_midnight2('1:34')
puts before_midnight2('00:34')
puts before_midnight2('1:34')

# .map(&:to_i) is a shorthand way of doing 
# something.map { |string| string.to_i }
# In after_midnight, use % MINUTES_PER_DAY to handle edge case. after_midnight
# calculates 00:00 and 24:00 as different times.  The remainder of % is zero
# for 00:00 and 24:00.  If the user enters 0, delta_minutes gets set to 1440.
# line 53 fixes this.
# Further Exploration.  How would methods change if allowed to use 
# Date and Time classes?

require 'time'

def after_midnight3(time_str)
  t = Time.parse(time_str)
  (t.hour * 60 + t.min) % MINUTES_PER_DAY
end

def before_midnight3(time_str)
  (MINUTES_PER_DAY - after_midnight3(time_str)) % MINUTES_PER_DAY
end


puts '================'
puts after_midnight3('00:30')
puts after_midnight3('5:30')

puts before_midnight3('00:30')

# works.  solution from student examples

