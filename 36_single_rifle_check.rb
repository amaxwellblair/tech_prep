# 1048 1118
# 1106 unclear if it right - think it is correct :D
# it is efficient though :}

# I figured out how to get rich: online poker.
# I suspect the online poker game I'm playing shuffles cards by doing a single
#" riffle ↴ ."
#
# To prove this, let's write a function to tell us if a full deck of cards
# shuffled_deck is a single riffle of two other halves half1 and half2.
#
# We'll represent a stack of cards as an array of integers in the range
# 1..52 (since there are 52 distinct cards in a deck).
#
# Why do I care? A single riffle is not a completely random shuffle. If I'm
# right, I can make more informed bets and get rich and finally prove to my ex
# that I am not a "loser with an unhealthy cake obsession" (even though it's
# too late now because she let me go and she's never getting me back).


require 'pry'

def riffle?(deck, half1, half2)
  i = 0
  while i < deck.length
    # binding.binding.pry
    if half1.first == deck[i]
      half1.shift()
      i += 1
      next
    elsif half2.first == deck[i]
      half2.shift()
      i += 1
      next
    end
    return false
  end
  return true
end

top_half = (1..26).to_a
bottom_half = (27..52).to_a
shuffled_deck = (1..52).to_a

p riffle?(shuffled_deck, top_half, bottom_half)
