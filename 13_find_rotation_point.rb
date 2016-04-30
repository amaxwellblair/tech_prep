# 1116 - 1146
# 1147 - complete - correct too :D!

# I want to learn some big words so people think I'm smart.
# I opened up a dictionary to a page in the middle and started flipping through,
# looking for words I didn't know. I put each word I didn't know at increasing
# indices in a huge array I created in memory. When I reached the end of the
# dictionary, I started from the beginning and did the same thing until I
# reached the page I started at.
#
# Now I have an array of words that are mostly alphabetical, except they
# start somewhere in the middle of the alphabet, reach the end, and then start
# from the beginning of the alphabet. In other words, this is an alphabetically
# ordered array that has been "rotated." For example:
#
#   words = [
#     'ptolemaic',
#     'retrograde',
#     'supplant',
#     'undulate',
#     'xenoepist',
#     'asymptote', # <-- rotates here!
#     'babka',
#     'banoffee',
#     'engender',
#     'karpatka',
#     'othellolagkage',
# ]
#
# Write a function for finding the index of the "rotation point," which is
# where I started working from the beginning of the dictionary. This array is
# huge (there are lots of words I don't know) so we want to be efficient here.

#
def rotate_me(words, bi = 0, ei = -1)

  if ei == -1
    ei = words.length-1
  end
  splits = (ei - bi) / 2
  b = words[bi]
  e = words[ei]
  m = words[splits]

  if ei - bi <= 2
    return bi if b <= e
    return ei
  elsif b > m
    rotate_me(words, bi, splits)
  elsif e < m
    rotate_me(words, splits, ei)
  end
end
  # dont want to put it in a structure takes too long
  # we could do something similar to divide and conquer but it isn't quite sorted
  # you know the end the beginning and the middle - you could hypothetically
  # know what happens in between at least one. or at least know that the reset is in one

  words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'asymptote', # <-- rotates here!
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
  ]

puts rotate_me(words)
puts 4
