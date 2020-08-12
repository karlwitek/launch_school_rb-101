# Write a method that takes two arguments: the first is the starting number, and the second is the ending
# number.  Print out all numbers between the two numbers, except if a number is divisible by 3, print
# 'Fizz', if a number is divisible by 5, print 'Buzz', and finally if a number is divisible by
# 3 and 5, print 'FizzBuzz'.

def fizz_buzz(starting_num, ending_num)
  result = []
  starting_num.upto(ending_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      result << 'FizzBuzz'
    elsif num % 3 == 0
      result << 'Fizz'
    elsif num % 5 == 0
      result << 'Buzz'
    else
      result << num
    end
  end
  p result.join(', ')
end


fizz_buzz(1, 9) # "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz"

fizz_buzz(5, 20) # "Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz"
# works. Another solution of mine

def fizzbuzz(first_num, second_num)
  string = ''
  first_num.upto(second_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      string += 'Fizzbuzz' + ', '
    elsif num % 3 == 0
      string += 'Fizz' + ', '
    elsif num % 5 == 0
      string += 'Buzz' + ', '
    else string += num.to_s + ', '
    end
  end
  puts string.chomp(', ')
end

fizzbuzz(2, 16) # 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizzbuzz, 16

# works.  LS -- >

def ls_fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

ls_fizzbuzz(2, 15)

# Used a case statement in fizzbuzz_value method.  This case statement doesn't have a value
# next to case for comparison.  When used in this form, we get the same functionality as if we
# used an if/else conditional.  The case statement is the only thing in fizzbuzz_value method.
# This works because a case statement returns the value from the last line of the matched
# when branch.  If a number is divisible only by 3, then 'Fizz' is returned from the case 
# statement. That return value act as the return value for the method, since there are no
# other lines after this case statement.  (Watch for more code after case statement, would 
# have to store the return value of the case statement in a variable and explicitly return
# it at the last line of the method). (me)


