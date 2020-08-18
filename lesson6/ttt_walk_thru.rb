require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVE = 'Choose'

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "      |      |"
  puts "  #{brd[1]}   |  #{brd[2]}   |  #{brd[3]}"
  puts "      |      |"
  puts "------+------+------"
  puts "      |      |"
  puts "  #{brd[4]}   |  #{brd[5]}   |  #{brd[6]}"
  puts "      |      |"
  puts "------+------+------"
  puts "      |      |"
  puts "  #{brd[7]}   |  #{brd[8]}   |  #{brd[9]}"
  puts "      |      |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def joinor(array, delimeter=',', word=' or ')
  if array.size < 3
    array.join(word)
  else
    array[0..-2].join(delimeter) + word + array[-1].to_s
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i # our keys are integers
    break if empty_squares(brd).include?(square)
    prompt "That's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if !!offense(brd)
    offense(brd).each do |key|
      if brd[key] == INITIAL_MARKER
        brd[key] = COMPUTER_MARKER
      end
    end
  elsif !!defense(brd)
    defense(brd).each do |key|
      if brd[key] == INITIAL_MARKER
        brd[key] = COMPUTER_MARKER
      end
    end
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty? # == [] would work too
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def defense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
      brd.values_at(*line).include?(INITIAL_MARKER)
      return line
    end
  end
  nil
end

def offense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
      brd.values_at(*line).include?(INITIAL_MARKER)
      return line
    end
  end
  nil
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def alternate_player(player)
  player == 'Player' ? 'Computer' : 'Player'
end

def place_piece!(brd, player)
  if player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end


games_won_by_computer = 0
games_won_by_player = 0
input = ''
current_player = ''

loop do
  board = initialize_board
  display_board(board)

  if FIRST_MOVE == 'Choose'
    loop do
      puts "Choose who goes first? ('p' for Player, 'c' for computer)"
      input = gets.chomp
      if input == 'p'
        current_player = 'Player'
        break
      elsif input == 'c'
        current_player = 'Computer'
        break
      else
        puts "Please enter a 'p' or 'c' ."
      end
    end
  end

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
  sleep(2)
  
  if detect_winner(board) == 'Player'
    games_won_by_player += 1
  elsif detect_winner(board) == 'Computer'
      games_won_by_computer += 1
  end

  if games_won_by_player == 5 || games_won_by_computer == 5
    prompt "#{detect_winner(board)} won the match!"
    break
  end
end

prompt "Thanks for playing Tic Tac Toe.  Goodbye."
