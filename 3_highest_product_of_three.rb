# 3:07 - 3:37
# ok solution at 3:41

# 5:27 start
# so it was wrong - need to redo

# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.

require 'pry'

def highest_product(nums)
  product = nums[0..2].reduce(:*)
  highest_two_numbers = nums[0..2].max(2)
  lowest_two_numbers = nums[0..2].min(2)
  lowest_product_two = lowest_two_numbers.reduce(:*)
  highest_product_two = highest_two_numbers.reduce(:*)
  i = 2
  while i < nums.length
    if highest_product_two * nums[i] > product
      product = highest_product_two * nums[i]
    end

    if lowest_two_numbers.max > nums[i]
      lowest_two_numbers.push(nums[i]).sort!.pop
      lowest_product_two = lowest_two_numbers.reduce(:*)
    end

    if highest_two_numbers.min < nums[i]
      highest_two_numbers.push(nums[i]).sort!.shift
      highest_product_two = highest_two_numbers.reduce(:*)
    end

    i += 1
  end

  if lowest_product_two * highest_two_numbers.max > product
    return lowest_product_two * highest_two_numbers.max
  end
  product
end


tests = [1, 2, 3, 4, 5]
puts highest_product(tests)
puts 3*4*5

tests = [1, 2, 3, -4, -5]
puts highest_product(tests)
puts 3*4*5
