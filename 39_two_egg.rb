# 1150 1220
# there is a better way to do this require math. Which I don't know - k thx

# A building has 100 floors. One of the floors is the highest floor an egg can
# be dropped from without breaking.
# If an egg is dropped from above that floor, it will break. If it is dropped
# from that floor or below, it will be completely undamaged and you can drop the
#  egg again.
#
# Given two eggs, find the highest floor an egg can be dropped from without
# breaking, with as few drops as possible.

def break_point
  67
end

def egg_check()
  # obv linear time is achievable but you only use one egg
  # we can check every ten floors, then move with the egg if it doesn't break
  # seems pretty arbitrary though
  lives = 2
  floors = (1..100).to_a
  i = 0
  while lives == 2
    i += 10
    if floors[i] > break_point
      lives -= 1
    end
  end
  i -= 10

  while lives == 1
    i += 1
    if floors[i] > break_point
      lives -= 1
    end
  end
  return i
end

p egg_check
