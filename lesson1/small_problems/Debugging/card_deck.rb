cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => [],
         :diamonds => [],
         :clubs    => [],
         :spades   => [] }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end
p deck
# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  deck[suit] = cards.shuffle
  #cards = deck[suit]
  #cards.shuffle!
  player_cards << deck[suit].pop
end

# Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end

#   sum += remaining_cards.sum
# end

sum = deck.map do |_suit, remaining_cards|
  remaining_cards.map { |card| score(card) }.reduce(:+)
end


p deck
p sum
puts sum.sum

# The code produces a TypeError. Once you get the program to run and produce a sum, you might
# notice that the sum is off: It's lower than it should be. Why is that?
