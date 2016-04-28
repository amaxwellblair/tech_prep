# 1101 - failure
# 135 - 205 failure
# 313 - 343 partial
# utter failure - crash and burn
# this needs to be redone bottom up

# Imagine you landed a new job as a cashier...
# Your quirky boss found out that you're a programmer and has a weird request about something they've been wondering for a long time.
#
# Write a function that, given:
#
# an amount of money
# an array of coin denominations
# computes the number of ways to make amount of money with coins of the available denominations.
#
# Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 44—the number of ways to make 44¢ with those denominations:
#
# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢

@mem = {}

def number_of_combos(amount, denom)
  return 1 if amount == 0
  return 0 if denom.length == 0
  return 0 if amount < 0
  memo_key = [amount, denom].to_s
  puts "checking amount: #{amount} on denom: #{denom}"
  current_coin = denom.first
  other_coins = denom[1..-1]
  i = 0
  n = 0
  while amount >= 0
    key = [amount, denom].to_s
    if !@mem[key].nil?
      puts "getting @mem"
      n += @mem[key]
      amount -= current_coin
      next
    end
    n += number_of_combos(amount, other_coins)
    amount -= current_coin
  end

  @mem[memo_key] = n

  return n
end

puts number_of_combos(4, [1,2,3])
puts @mem
