# 1101 - 1131
# 1111 complete - correct first try :D

# Suppose we had an array ↴ of n integers in sorted order.
# How quickly could we check if a given integer is in the array?

def divide_and_conquer(n, numbers)
  splits = numbers.length / 2
  if splits == 0
    return false
  elsif numbers[splits] > n
    divide_and_conquer(n, numbers[0..(splits-1)])
  elsif numbers[splits] < n
    divide_and_conquer(n, numbers[(splits+1)..-1])
  elsif numbers[splits] == n
    return true
  end
end

nums = (1..11).to_a

puts divide_and_conquer(2, nums)
puts divide_and_conquer(100, nums)
