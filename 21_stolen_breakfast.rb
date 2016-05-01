# 1113 - 1143
# 1124 - inefficient - I think - it definitely was
# 1158 - correct answer with a ton of hints. This should be a priority to do again


# Your company delivers breakfast via autonomous quadcopter drones. And
# something mysterious has happened.
# Each breakfast delivery is assigned a unique ID, a positive integer. When one
# of the company's 100 drones takes off with a delivery, the delivery's ID is
# added to an array, delivery_id_confirmations. When the drone comes back and
# lands, the ID is again added to the same array.
#
# After breakfast this morning there were only 99 drones on the tarmac. One of
# the drones never made it back from a delivery. We suspect a secret agent from
# Amazon placed an order and stole one of our patented drones. To track them
# down, we need to find their delivery ID.
#
# Given the array of IDs, which contains many duplicate integers and one unique
# integer, find the unique integer.
#
# The IDs are not guaranteed to be sorted or sequential. Orders aren't always
# fulfilled in the order they were received, and some deliveries get cancelled
# before takeoff.

require 'pry'

def missing_drone(drones)
  # drone_hash = drones.each_with_object(Hash.new(0)) do |drone, hsh|
  #   hsh[drone] +=1
  # end
  #
  # drone_hash.each do |key, value|
  #   if value == 1
  #     return key
  #   end
  # end

  bit_map = 0
  drones.each do |drone|
    bits = drone
    # binding.pry
    if (bits & bit_map) == 0
      bit_map = bit_map | bits
    else
      bit_map = bit_map - bits
    end
  end
  bit_map
end



  # on the surface it seems like a set problem but I feel like we can get better memory than a typical set
  # because we could just go through and just find the least counted using a hash
  # division would be basically brute force
  # sorting would make it nlogn - doesn't seem optimal
  # we can say **** it on memory and get O(n) complexity and O(n) space
  # can we do something greedy?

drones = [111, 111, 222, 222, 333]

puts missing_drone(drones)
puts 333
