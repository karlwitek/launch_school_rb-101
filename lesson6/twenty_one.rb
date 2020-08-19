SUITS = [:hearts, :diamonds, :clubs, :spades]

DECK = { :hearts =>   ["2", "3", "4", "5", "6", "7", "8",
                       "9", "10", "J", "Q", "K", "A"],
         :diamonds => ["2", "3", "4", "5", "6", "7", "8",
                       "9", "10", "J", "Q", "K", "A"],
         :clubs =>    ["2", "3", "4", "5", "6", "7", "8",
                       "9", "10", "J", "Q", "K", "A"],
         :spades =>   ["2", "3", "4", "5", "6", "7", "8",
                       "9", "10", "J", "Q", "K", "A"] }

CARD_VALUE = { '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7' => 7,
               '8' => 8, '9' => 9, '10' => 10, 'J' => 10, 'Q' => 10,
               'K' => 10, 'A' => 11 }
              
def get_random_card(deck)
  array = []
  suit = SUITS.sample
  card = deck[suit].sample
  index = deck[suit].index(card)
  array << card << suit.to_s
  deck[suit].slice!(index)
  array
end

def display_deal(player_hand, dealer_hand)
  puts "You have a #{player_hand[0][0]} of #{player_hand[0][1]} and a " +
       "#{player_hand[1][0]} of #{player_hand[1][1]}."
  puts "The dealer is showing a #{dealer_hand[0][0]} of #{dealer_hand[0][1]} " +
       "and one card is facedown."
end

def convert_to_value(hand)
  array_of_integers = []
  if hand.flatten.size > 2
    hand.each_with_index do |element, index|
      array_of_integers << CARD_VALUE[hand[index][0]]
    end
  else
    array_of_integers << CARD_VALUE[hand.first]
  end
  array_of_integers
end

def calculate_total(hand_as_integers)
  hand_as_integers.reduce(:+)
end

def busted?(hand_total)
  if hand_total > 21
    true
  else
    false
  end
end

def check_for_aces(hand_as_integers)
  total = hand_as_integers.reduce(:+)
  if total < 22 
    return hand_as_integers
  end
  while total > 21
    if hand_as_integers.include?(11)
      index_of_ace = hand_as_integers.index(11)
      hand_as_integers[index_of_ace]= 1
      total = hand_as_integers.reduce(:+)
    else
      break
    end
  end
  hand_as_integers
end

loop do
  deck = DECK
  hand_as_integers = []
  first_two_for_player = [get_random_card(deck), get_random_card(deck)]
  first_two_for_dealer = [get_random_card(deck), get_random_card(deck)]

  player_total = 0
  dealer_total = 0
  hand_as_integers += convert_to_value(first_two_for_player)

  display_deal(first_two_for_player, first_two_for_dealer)

  loop do
    puts "Do want to hit or stay? (enter 'h' or 's'):"
    answer = gets.chomp.downcase
    if answer == 'h'
      hit_card = get_random_card(deck)
      puts "The card is the #{hit_card[0]} of #{hit_card[1]}"
      hand_as_integers += convert_to_value(hit_card)
      hand_as_integers = check_for_aces(hand_as_integers)
      player_total = calculate_total(hand_as_integers)
      puts "You have #{player_total}"
      if busted?(player_total)
        puts "You busted. You lost this hand."
        break
      end
    elsif answer == 's'
      player_total = calculate_total(hand_as_integers)
      puts "You have #{player_total}"
      break
    else
      puts "Please enter 'h' or 's'"
    end
  end

  if !busted?(player_total)
    down_card = first_two_for_dealer[1]
    puts "The dealer flips over the #{down_card[0]} of #{down_card[1]}"
    hand_as_integers = convert_to_value(first_two_for_dealer)
    dealer_total = calculate_total(hand_as_integers)
    puts "The dealer has #{dealer_total}"
    while dealer_total < 17 do
      next_card = get_random_card(deck)
      puts "The dealer hits a #{next_card[0]} of #{next_card[1]}"
      hand_as_integers += convert_to_value(next_card)
      hand_as_integers = check_for_aces(hand_as_integers)
      dealer_total = calculate_total(hand_as_integers)
      puts "The dealer has #{dealer_total}"
      if busted?(dealer_total)
        puts "The dealer busts. You Win!"
      end
    end
  end

  if !busted?(player_total) && !busted?(dealer_total)
    if player_total == dealer_total
      puts "You and the dealer push."
    elsif player_total > dealer_total
      puts "You win!"
    else
      puts "The Dealer wins."
    end
  end

puts "Do you want to play again?"
answer = gets.chomp
break unless answer.downcase.start_with?('y')
end





    

