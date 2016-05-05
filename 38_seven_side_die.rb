# 1148 complete - didn't keep track of start time
# not sure if this is the right way to do it. A quick run through makes it seem
# uniform - unclear though

# You have a function rand5() that generates a random integer from 1 to 5. Use
# it to write a function rand7() that generates a random integer from 1 to 7.
# rand5() returns each integer with equal probability. rand7() must also return
# each integer with equal probability.

def rand5()
  rand(1..5)
end

def rand7()
  result_two = rand5() - 1
  while result_two > 2
    result_two = rand5() - 1
  end

  return result_two + rand5()
end

p rand7()
