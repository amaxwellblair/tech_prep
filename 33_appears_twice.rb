# 920 - 950
# 950 completed this with a subtle hint so still feel good I got this one on
# my own
# I have an array where every number in the range 1...n1...n appears once except
# for one number which appears twice.
# Write a function for finding the number that appears twice.

def twice(numbers)
  sum = numbers.reduce(:+)
  i = 1
  while i <= numbers.max
    sum -= i
    i += 1
  end
  return sum
end

numbers = [1, 2, 3, 4, 5, 5, 6]

puts twice(numbers)
puts 5
