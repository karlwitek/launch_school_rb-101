# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# You may assume that the year is greater than 1752(when the United Kingdom adopted the modern
# Gregorian Calendar) and that it will remain in use for the foreseeable future.

def friday_13th(year)
  num_of_13 = 0

  1.upto(12) do |month|
    t = Time.new(year, month, 13)
    num_of_13 += 1 if t.friday?
  end
  num_of_13
end

# puts friday_13th(2015) == 3
# puts friday_13th(1986) == 1
# puts friday_13th(2019) == 2

# puts friday_13th(2020)

# true
# true
# true
# 2

# LS -->

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

# puts friday_13th(2015) # 3

# Approach: Ruby's Date class may be helpful here.  Look at how to initialize a Date object.
# Look at the friday? method.
# First, we must require the Date class, since that class isn't part of the core library. This
# problem asks us to find all Friday the 13ths in a given year. To do this, we step through each
# month of the year and look at the 13th of the month; if it's a Friday, increment unlucky_count.

# Further: An interesting variation on this problem is to count the number of months that have 
# five Fridays.  This one is harder than it sounds since you must account for leap years.

def months_with_five_fridays(year)
  num_of_months = 0

  1.upto(12) do |month|
    num_of_fridays = 0
    day = Date.new(year, month, 1)
    last_day_of_month = Date.new(year, month, -1)
    while day <= last_day_of_month
      num_of_fridays += 1 if day.friday?
      day = day.next_day
    end
    puts num_of_fridays
    puts "Last day of month #{last_day_of_month}"
    if num_of_fridays > 4 
      num_of_months += 1
    end
  end
  puts "#{num_of_months} months with 5 Fridays in it"
end

months_with_five_fridays(2004)

# works.  This code does not explicitly account for leap years. I think
# the Date module takes care of it.

