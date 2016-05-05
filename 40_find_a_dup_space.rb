# 347 - 417

# Find a duplicate, Space Edition™.
# We have an array of integers, where:
#
# The integers are in the range 1..n1..n
# The array has a length of n+1n+1
# It follows that our array has at least one integer which appears at least
# twice. But it may have several duplicates, and each duplicate may appear more
# than twice.
#
# Write a function which finds any integer that appears more than once in our
# array.
#
# We're going to run this function on our new, super-hip Macbook Pro With Retina
#  Display™. Thing is, the damn thing came with the RAM soldered right to the
# motherboard, so we can't upgrade our RAM. So we need to optimize for space!


def find_dups(nums)
  nums.sort!
  i = 1
  while i < nums.length
    if nums[i] == nums[i - 1]
      return nums[i]
    end
    i += 1
  end
end


p find_dups([1, 2, 5, 5, 5, 6, 7])
