# Build a program that displays when the user will retire and how
# many years that person will have to work until retirement.

this_year = 2020

puts 'What is your age? '
age = gets.to_i

puts 'At what age would you like to retire? '
retire_age = gets.to_i

work_years = retire_age - age
retire_year = this_year + work_years

puts "It is #{this_year}. You will retire in #{retire_year}."
puts "You only have #{work_years} years to go. "
# Good.
# LS below

print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year

work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year} "
puts "You only have #{work_years_to_go} years of work to go! "

# Use Time.now to get the current date.  This returns a time object. The
# time class has method Time#year that gives us the current year.



