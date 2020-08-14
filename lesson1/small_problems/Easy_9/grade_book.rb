# Write a method that determines the mean(average) of the three scores passed to it, and 
# returns the letter value associated with that grade.  Tested values are all between
# 0 and 100.  There is no need to check for negative values or values greater than 100.

def final_grade(score_1, score_2, score_3)
  average_score = (score_1 + score_2 + score_3) / 3.0
 
  case 
  when average_score >= 90 && average_score <= 100
    'A'
  when average_score >= 80 && average_score < 90
    'B'
  when average_score >= 70 && average_score < 80
    'C'
  when average_score >= 60 && average_score < 70
    'D'
  else 
    'F'
  end
end

puts final_grade(89, 98, 96) # A
puts final_grade(56, 89, 96) # B

# LS -->

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

puts get_grade(67, 87, 98) # B

# The result is just the average of the three scores.  The case statement does a comparison
# on it.  This takes advantage of the fact that the comparison used by the case statement
# returns true if the range includes the other object (essentially calling (range).include?
# (other_object)).  You can therefore read it as:
#  when (90..100).include?(result)

# Further:  How would you handle this if there was a possibility of extra credit grades
# causing it to exceed 100 points?

# answer: add extra credit points, while still dividing by the number of test scores.
# if total points were greater than 100, assign a grade of 'A+'.

def final_grade(s1, s2, s3, extra_points)
  average_score = (s1 + s2 + s3 + extra_points) / 3

  case average_score
  when 100..1000           then 'A+'
  when 90..100             then 'A'
  when 80..89              then 'B'
  when 70..79              then 'C'
  when 60..69              then 'D'
  else                          'F'
  end
end

puts final_grade(89, 95, 95, 20) # A
puts final_grade(89, 95, 95, 25) # A+

# when average_score > 100 then 'A+' .  This does not work as line 56.  Research why.
# Stack Overflow: When you write case x, the important part you need to understand is
# that ruby takes the x and then applies a comparison to the argument or expressions 
# you insert in the when clause.  If you your code was:
# when x > 2, read to ruby like ..  if x == > 2  (error)
# When you remove a specific object from the case statements, you can apply conditionals
# within the when statements.  
# case  (object removed from the case statement)
# when ...

# rubyguides.com :  'Note: In other programming languages this is known as a switch statement'
# medium.com: example:
# surface = 42

# case surface
# when 0..70   then :first_value
# when 70..90  then :second_value
# end

# Here, the case statement takes an integer as a parameter.
# As the when clause takes a range as a parameter then the Range#=== operator
# is invoked and it checks if the integer is included in the range.




