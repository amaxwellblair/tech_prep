# 331 - 401 - didnt do it
# 849 - didn't take it seriously got it done leisurely with hints telling me
# i was wrong

# Write a function for doing an in-place ↴ shuffle of an array.
# The shuffle must be "uniform," meaning each item in the original array must
# have the same probability of ending up in each spot in the final array.
#
# Assume that you have a function get_random(floor, ceiling) for getting a
# random integer that is >=floor and <=ceiling.

def get_random(floor, ceiling)
  (rand(ceiling) - floor) + floor
end

def shuffle(things)
  i = 0
  l = things.length
  floor = things.length
  ceil = things.length
  while i < l
    thing = things.shift()
    things.insert(get_random(floor, ceil), thing)
    floor -= 1
    i += 1
  end
  return things
end

p shuffle([1, 2, 3, 4, 5])
