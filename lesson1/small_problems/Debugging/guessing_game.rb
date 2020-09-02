# def valid_integer?(string)
#   string.to_i.to_s == string
# end

# def guess_number(max_number, max_attempts)
#   winning_number = (1..max_number).to_a.sample
#   attempts = 0

#   loop do
#     attempts += 1
#     break if attempts > max_attempts

#     input = nil
#     until valid_integer?(input)
#       print 'Make a guess: '
#       input = gets.chomp
#     end

#     guess = input.to_i

#     if guess == winning_number
#       puts 'Yes! You win.'
#     else
#       puts 'Nope. Too small.' if guess < winning_number
#       puts 'Nope. Too big.'   if guess > winning_number

#       # Try again:
#       guess_number(max_number, max_attempts)
#     end
#   end
# end

# guess_number(10, 3)

# original code above.
# my solution below:

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0
  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
end


guess_number(10, 3)

loop do
  puts "Play Again? (y or n)"
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    guess_number(10, 3)
  else
    puts "goodbye"
    break
  end
end

# Added loop to ask user if want to play again.

# Numbers guessing game. The program picks a random number between 1 and a provided maximum
# number and offers you a given number of attempts to guess it. Doesn't work as expected.
# What is wrong?

# guess_number is called again if the user doesn't win.  Should let the user guess until the 
# number of tries equals max_attempts.  Instead, if the user doesn't win, the game starts over
# with a new random number. Also, the program should break out of the loop (current code)
# if the user wins. After winning or losing, then ask the user to play again.

# Example of adding 2 puts statements to inspect the state of the program:
# Could also use binding.pry
def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  puts "winning_number = #{winning_number}"

  loop do
    attempts += 1
    break if attempts > max_attempts

    puts "attempt #{attempts} of #{max_attempts}"
    #  more code ....

# output with this example:
# winning_number = 8
# attempt 1 of 3
# Make a guess: 2
# Nope. Too small.
# winning_number = 4
# attempt 1 of 3
# Make a guess:

# If user guesses correctly, a winning message is printed, but the loop continues.
# Also, each time the user submits a wrong guess, a new winning number is determined and
# attempts is reset.  Not what we want.
# The LS solution is the same as my solution without the loop to play again.
# Add a break after winning condition and remove guess_number invocation from within the
# method.
# Discussion: In order to stop looping when the user has guessed correctly, we add a break
# statement to line 23. (after, if guess == winning_number).  The unexpected behavior exhibited
# when a user guesses wrongly is due to the invocation of guess_number on line 28 of the 
# original code.  As seen in the example debugging output provided, doing so determines a new
# winning_number and resets attempts to 0 each time we re-enter the method.
# It's not necessary to invoke guess_number from within the loop.  We can rely on our loop to 
# continue prompting the user until they have guessed correctly or run out of guesses.
# Therefore we can simply remove the invocation of guess_number from line 28.
