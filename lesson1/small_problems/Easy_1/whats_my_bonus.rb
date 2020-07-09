# Write a method that takes two arguments, a positive integer
# and a boolean, and calculates the bonus for a given salary.  If 
# the boolean is true, bonus should be half of the salary.
# If the boolean is false, bonus is zero.

def bonus(salary, boolean)
  if boolean == true
    bonus = salary * 0.5
  else
    bonus = 0
  end
  bonus
end

puts bonus(3000, true)
puts bonus(2000, false)
puts bonus(5000, true) == 2500
#  works.  LS solution below

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(3000, true) == 1500
puts calculate_bonus(2000, false)
puts calculate_bonus(4000, true)

#  Takes advantage of the ternary operator. Able to use bonus as the 
# condition because it's a boolean. It's value will be true or false.
# return salary/2 or 0.



