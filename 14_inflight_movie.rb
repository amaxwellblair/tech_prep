# 1157 1227
# 1227 - complete basically the right answer not quite the same though.
# needed hints for this

# You've built an in-flight entertainment system with on-demand movie streaming.
# Users on longer flights like to start a second movie right when their first
# one ends, but they complain that the plane usually lands before they can see
# the ending. So you're building a feature for choosing two movies whose total
# runtimes will equal the exact flight length.
#
# Write a function that takes an integer flight_length (in minutes) and an array
#  of integers movie_lengths (in minutes) and returns a boolean indicating
# whether there are two numbers in movie_lengths whose sum equals flight_length.
#
# When building your function:
#
# Assume your users will watch exactly two movies
# Don't make your users watch the same movie twice
# Optimize for runtime over memory



def which_watch(flight_length, movie_times)
  # we don't want brute force
  # assume there is a way to do this with O(n) given the last comment
  # we are not going to put this into anything and it doesn't really seem like a sorting problem
  # brute force is O(n) +

  times = {}
  movie_times.each_with_index do |movie, index|
    times[movie] = [flight_length - movie, index]
  end

  movie_times.each_with_index do |movie, index|
    movie, i = times[times[movie].first]
    return true if movie && i != index
  end

  return false
end

movie_times = [1, 2, 3, 4, 5, 6]

puts which_watch(4, movie_times)
puts true

movie_times = [2, 3, 4, 5, 6]

puts which_watch(4, movie_times)
puts false
