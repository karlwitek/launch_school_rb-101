cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    score(card)
  end

  #sum += remaining_cards.sum
end

# puts sum

# Original code above.  My changes below:

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
  player_cards << deck[suit].pop
end

# Determine the score of the remaining cards in the deck

sum = deck.map do |_suit, remaining_cards|
  remaining_cards.map { |card| score(card) }.reduce(:+)
end

p deck
p sum
puts sum.sum

# The code produces a TypeError. Once you get the program to run and produce a sum, you might
# notice that the sum is off: It's lower than it should be. Why is that? (original code)

# LS -->

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end

  sum += scores.sum
end

puts sum

# Original error caused by the remaining_cards array still contained :jack instead of its
# score(10). (could of been another face card).  We use Array#map on lines 30-32 to map the
# cards to their scores. .map returns a new array with the scores, but we never use that
# new array.  remaining_cards still references the original array containing both integers
# representing numbered cards and symbols representing face cards.  The solution is to 
# assign the new array returned by map to a variable (scores) and invoke sum on that new
# array of integers.  Now our program successfully returns a sum. Now, check if sum is 
# correct.  Add a test case: (the sum of the remaining cards should be the total sum of the
# deck when it's complete minus the sum of the player_cards)

# total_sum  = 4 * [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].sum
# player_sum = player_cards.map { |card| score(card) }.sum

# puts(sum == total_sum - player_sum) #=> false

# LS uses binding.pry to inspect with two break points.  One before we collect the players
# cards and one at the end of each iteration. lines 7 and 15 of original (binding.pry)

# After one iteration, one card is gone, but all four arrays are impacted instead of just one.

# The important thing to notice here is that although we intended to apply shuffle! and pop
# to only one of the arrays (returned by deck[suit]), these method invocations impact all
# four arrays; they are all shuffled in the exact same way and they all miss the player card
# we picked.
# This is because on lines 3-6 we assigned the same array object to each suit.  The value
# associated with each key in our deck hash is thus the same object.  When we mutate this 
# object using shuffle! and pop, each value in our deck hash is affected by that mutation.
# The most straightforward solution is to clone the cards array when adding it to the deck on
# lines 3-6.

