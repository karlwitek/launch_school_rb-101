# A featured number is an odd number that is a multiple of 7, and whose digits occur exactly
# once each. Write a method that takes a single integer as an argument


def featured(number)
  featured_number = number + 1
  
  loop do
    if featured_number % 7 == 0 && featured_number.odd? && occur_once?(featured_number)
      break
    else
      featured_number += 1
    end
  end
  featured_number
end

def occur_once?(featured_number)
  num_string = featured_number.to_s
  num_array = num_string.split('')
  num_array.none? { |num| num_string.count(num) > 1 }
end

# puts featured(12) == 21
# puts featured(20) == 21
# puts featured(21) == 35
# puts featured(997) == 1029
# puts featured(1029) == 1043
# puts featured(999_999) == 1_023_547
# puts featured(999_999_987) == 1_023_456_987

# all true (next modify method to display error message if featured number does not exist)

require 'timeout'


def featured(number)
  featured_number = number + 1
  
  begin
    Timeout.timeout(10) do
      loop do
        if featured_number % 7 == 0 && featured_number.odd? && occur_once?(featured_number)
          break
        else
          featured_number += 1
        end
      end
    end
  rescue
    return "The featured number does not exist."
  end
  featured_number
end

puts featured(12)
puts featured(9_999_999_999) 

# 21
# The featured number does not exist.

# LS -->

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number > 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

# A good way to start is to first make sure we meet the conditions of a 'featured number'.
# In this case, odd, multiple of 7 and no duplicate digits.
# We make it so that we only have to increment by 14. So, that takes care of the second
# condition. We also make sure that the number we start at for incrementation is an odd
# multiple of 7.  If we set it up like this, then every time we add 14, we'll consistently
# get the subsequent odd multiple of 7.  As for checking if all the digits are unique, we
# use a string array for that.  This array contains the individual digits of number in 
# string format.  uniq is called on that array and if it is the same as the original array,
# then we know that all the digits in our number are unique.
# Return an error message if there is no 'featured number' that occurs after the number that 
# is passed in.  That is handled by checking the highest possible unique value, and then 
# breaking out of our loop if number is greater than that value.

