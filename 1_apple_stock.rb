# 1:13 pm
# correct

def get_max_profit(prices)
  max_price = 1
  potential_min = 0
  min_price = 0
  profit = prices[1] - prices[0]
  index = 2
  while index < prices.length
    if prices[index] < prices[min_price] && prices[index] < prices[potential_min]
      potential_min = index
    elsif (prices[index] - prices[potential_min]) > profit
      min_price = potential_min
      max_price = index
      profit = prices[max_price] - prices[min_price]
    end
    index += 1
  end
  return profit
end


stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

puts get_max_profit(stock_prices_yesterday)
# returns 6 (buying for $5 and selling for $11)
