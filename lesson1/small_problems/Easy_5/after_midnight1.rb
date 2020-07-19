# Write a method that takes a time (in minutes) and returns the time
# of day in the 24 hour format (hh:mm). The method should work with any
# integer input.  May not use ruby's Date and Time classes.

def new_time(minutes)
  reset_time = 1440 # total minutes in a day
  new_time_in_min = reset_time + minutes

  if new_time_in_min > 1440
    new_time_in_min = new_time_in_min % 1440
  end
  hours, minutes = new_time_in_min.divmod(60)
  if hours < 10
    hour_display = "0#{hours}"
  else 
    hour_display = "#{hours}"
  end

  if minutes < 10
    minute_display ="0#{minutes}"
  else
    minute_display = "#{minutes}"
  end
  "#{hour_display}:#{minute_display}"
end

puts new_time(5)
puts new_time(-10) == '23:50'
puts new_time(10)
puts new_time(1439)
puts new_time(1441)
puts new_time(3000)

# works. LS -->

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)

end

puts time_of_day(10)
puts time_of_day(-60)


# Define a few useful constants so we don't have a bunch of mystery numbers
# in our method.
# Ensure the time difference is in the range of 0..MINUTES_PER_DAY by using
# the % operator. Use .divmod to break the time difference into hours and
# minutes.  Format the result with Kernel#format.  Each %02d produces a two-
# digit number with leading zeros as needed.

# Note that it is the first step that ensures that negative numbers are 
# properly handled.

# Further Exploration: How to approach this problem if we're allowed to use
# ruby's Date and Time classes? Suppose, we also needed to consider the day
# of the week? (Assume that delta_minutes is the number of minutes before and
# after midnight between Saturday and Sunday.)
# ex. delta_minutes = -4231 would produce a return value of Thursday 01:29


def new_day(minutes)
  t = Time.new(2020, 7, 19, 0, 0)
  new_time = t + minutes * 60
  new_time.strftime"%A %I:%M%P"
end

puts '================'
puts new_day(1441)
puts new_day(-1500)
puts new_day(-4000)
puts new_day(-4231)
# works
