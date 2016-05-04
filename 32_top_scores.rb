# 900 930
# 914 - complete... I am not quite sure they are right when they O(n)
# I looked at hints because I would assume that this is O(k) since we have to
# parse through every nil in the array. I think it should be thought of as
# O(k) versus O(nlogn) sometimes one is good the other times the other works
# faster

# You created a game that is more popular than Angry Birds.
# You rank players in the game from highest to lowest score. So far you're using
#  an algorithm that sorts in O(n\lg{n})O(nlgn) time, but players are
# complaining that their rankings aren't updated fast enough.
# You need a faster sorting algorithm.
#
# Write a function that takes:
#
# an array of unsorted_scores
# the highest_possible_score in the game
# and returns a sorted array of scores in less than O(n\lg{n})O(nlgn) time.


def butta_sort(max_score, scores)
  indices = Array.new(max_score, 0)
  scores.each do |score|
    indices[score] += 1
  end

  sorted = []
  indices.each_with_index do |count, index|
    count.times { sorted << index }
  end
  return sorted
end

scores = [100, 8, 56, 56, 14, 120, 150]
max_score = 200

puts butta_sort(max_score, scores)

puts scores.sort
