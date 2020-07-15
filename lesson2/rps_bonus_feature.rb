# Version 2 of rock, paper, scissors
# 2 added moves (spock, lizard), 5 total
# spock beats scissors, rock 's'
# lizard beats spock, paper 'l'
# rock beats lizard, scissors 'r'
# paper beats rock, spock 'p'
# scissors beats paper, lizard 'ss'
# Play until a match is won (first player to 5 wins)

VALID_CHOICES = %w(r p ss l s)

MOVES = { 'r' => ['l', 'ss'], 'p' => ['r', 's'],
          'ss' => ['p', 'l'], 'l' => ['s', 'p'],
          's' => ['ss', 'r'] }

WORDS = { 'r' => 'Rock', 'p' => 'Paper', 'ss' => 'Scissors',
          'l' => 'Lizard', 's' => 'Spock' }

def prompt(message)
  puts "=> #{message}"
end

def win?(player, computer)
  MOVES[player].include?(computer) 
end

def display_winner(player, computer)
  if win?(player, computer)
    puts "You won!"
  elsif win?(computer, player)
    puts "You lose."
  else
    puts "It's a tie!"
  end
end

def display_match_winner(player_wins, computer_wins, ties)
  if player_wins == 5
    puts "You won #{player_wins} to #{computer_wins}."
    puts "There were #{ties} ties."
  elsif computer_wins == 5
    puts "The computer won #{computer_wins} to #{player_wins}."
    if ties == 1
      puts "There was #{ties} tie."
    else
      puts "There were #{ties} ties."
    end
  end
end

rules = <<-RLS
   spock beats scissors, rock 
   lizard beats spock, paper 
   rock beats lizard, scissors 
   paper beats rock, spock 
   scissors beats paper, lizard
RLS

puts rules
puts " "
loop do
  player_num_wins = 0
  computer_num_wins = 0
  num_of_ties = 0
  player_choice = ''

  loop do
    loop do
      prompt("Choose rock, paper, scissors, Spock or lizard")
      prompt("(Enter 'r'-rock, 'p'-paper, 'ss'-scissors," \
            "'l'-lizard, 's'-Spock)")

      player_choice = gets.chomp

      if VALID_CHOICES.include?(player_choice)
        break
      else
        puts "That's not a valid choice."
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts "You chose: #{WORDS[player_choice]}; the computer" \
         " chose #{WORDS[computer_choice]}"

    display_winner(player_choice, computer_choice)

    if win?(player_choice, computer_choice)
      player_num_wins += 1
    elsif win?(computer_choice, player_choice)
      computer_num_wins += 1
    else
      num_of_ties += 1
    end
    break if player_num_wins == 5 || computer_num_wins == 5
  end

  display_match_winner(player_num_wins, computer_num_wins, num_of_ties)
  puts ' '
  puts "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
