#1122 1152
#1135 gave up - turns out my crumby solution is what they wanted
# dont love this question given it is so simple
# quizing you on your probablity theory

# You have a function rand7() that generates a random integer from 1 to 7.
# Use it to write a function rand5() that generates a random integer from 1 to 5.
# rand7() returns each integer with equal probability. rand5() must also return
# each integer with equal probability.

def rand7()
  rand(1..7)
end


def rand5()
  result = rand7() + -2
  while result <= 0
    result = rand7() + -2
  end
  return result
end

p rand5()
