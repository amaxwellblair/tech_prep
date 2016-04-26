# 1:55 - 2:25
# correct not on first try though

# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.
#
# For example, given:
#
#   [1, 7, 3, 4]
#
# your function would return:
#
#   [84, 12, 28, 21]
#
# by calculating:
#
#   [7*3*4, 1*3*4, 1*7*4, 1*7*3]
#
# Do not use division in your solution.

# iterate through and place numbers in an array of arrays
# move through and take the numbers behind you and in front of you and keep multiplying

def get_products_of_all_ints_except_at_index(numbers)
  i = 0
  back_sum = 1
  forward_sum = 1
  sol = Array.new(numbers.length, 1)
  while i < numbers.length
    back_sum *= numbers[i-1] if i != 0
    if i != (numbers.length - 1)
      forward_sum *= numbers[numbers.length - 1 - i]
    else
      forward_sum = 1
    end
    sol[i] *= back_sum
    sol[numbers.length - i - 2] *= forward_sum
    i += 1
  end
  return sol
end

nums = [1, 7, 3, 4]

puts get_products_of_all_ints_except_at_index(nums)
