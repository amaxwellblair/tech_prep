# 443 513
# failure - should have just done it the easy way you figured it should be done
# do it again

# You decide to test if your oddly-mathematical heating company is fulfilling its All-Time Max, Min, Mean and Mode Temperature Guarantee™.
# Write a class TempTracker with these methods:
#
# insert()—records a new temperature
# get_max()—returns the highest temp we've seen so far
# get_min()—returns the lowest temp we've seen so far
# get_mean()—returns the mean ↴ of all temps we've seen so far
# get_mode()—returns the mode ↴ of all temps we've seen so far
# Optimize for space and time. Favor speeding up the getter functions (get_max(), get_min(), get_mean(), and get_mode()) over speeding up the insert() function.
#
# get_mean() should return a float, but the rest of the getter functions can return integers. Temperatures will all be inserted as integers. We'll record our temperatures in Fahrenheit, so we can assume they'll all be in the range 0..1100..110.
#
# If there is more than one mode, return any of the modes.



# class Node
#   attr_accessor :right, :left, :value, :count
#   def initialize(value)
#     @right = nil
#     @left = nil
#     @count = 1
#     @value = value
#   end
# end
#
# class TempTracker
#   attr_reader :temperatures, :count
#
#   def initialize()
#     @temperatures = create_node(nil)
#     @count = 0
#   end
#
#   def create_node(value)
#     Node.new(value)
#   end
#
#   def insert(degree, tree = temperatures)
#     if tree.value.nil?
#       @count +=1
#       @temperatures.value = degree
#     elsif tree.value == degree
#       @count +=1
#       tree.count += 1
#     elsif tree.value > degree
#       if tree.left.nil?
#         @count +=1
#         tree.left = create_node(degree)
#       else
#         insert(degree, tree.left)
#       end
#     elsif tree.value < degree
#       if tree.right.nil?
#         @count +=1
#         tree.right = create_node(degree)
#       else
#         insert(degree, tree.right)
#       end
#     end
#   end
#
#   def get_max(tree = temperatures)
#     if tree.right == nil
#       return tree.value
#     else
#       get_max(tree.right)
#     end
#   end
#
#   def get_min(tree = temperatures)
#     if tree.left == nil
#       return tree.value
#     else
#       get_max(tree.left)
#     end
#   end
#
#   def get_sum(tree = temperatures, sum = 0.0)
#     sum += tree.value*tree.count if !tree.value.nil?
#     if tree.left.nil?
#       return sum
#     else
#       sum += get_sum(tree.left, sum)
#     end
#
#     if tree.right.nil?
#       return sum
#     else
#       sum += get_sum(tree.right, sum)
#     end
#
#     return sum
#   end
#
#   def get_mean()
#     get_sum(tree = temperatures, sum = 0) / count
#   end
#
#   def get_mode()
#     get_high_count.first
#   end
#
#   def get_high_count(tree = temperatures, this_count = [0, 0])
#     this_count = [tree.value, tree.count] if tree.count > this_count.last
#     if tree.left.nil?
#       return this_count
#     else
#       count = get_high_count(tree.left, this_count)
#     end
#
#     if tree.right.nil?
#       return this_count
#     else
#       this_count = get_high_count(tree.right, this_count)
#     end
#
#     return this_count
#   end
#
# end
#
# temps = [6, 6, 6, 1, 2, 3, 4, 5, 7, 8, 9, 10]
#
# tree = TempTracker.new()
# temps.each do |temp|
#   tree.insert(temp)
# end
#
# puts tree.get_max()
# puts tree.get_min()
# puts tree.get_mean()
# puts tree.get_mode()
