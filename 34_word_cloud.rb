# not sure how quickly this was done. Pretty quickly
# their solution does not use regex - mine does and meets their efficiency
# requirements

# You want to build a word cloud, an infographic where the size of a word
# corresponds to how often it appears in the body of text.
# To do this, you'll need data. Write code that takes a long string and builds
# its word cloud data in a hash ↴ , where the keys are words and the values are
# the number of times the words occured.
#
# Think about capitalized words. For example, look at these sentences:
#
#   'After beating the eggs, Dana read the next step:'
# 'Add milk and eggs, then add flour and sugar.'
# What do we want to do with "After", "Dana", and "add"? In this example, your
# final hash should include one "Add" or "add" with a value of 22. Make
# reasonable (not necessarily perfect) decisions about cases like "After" and
# "Dana".
#
# Assume the input will only contain words and standard punctuation.

def word_cloud(words)
  words.scan(/[A-z\-]+/).each_with_object(Hash.new(0)) do |word, hsh|
    hsh[word.downcase] += 1
  end
end

def word_cloud_deluxe(words)
  i = 0
  word = ""
  cloud = Hash.new(0)
  while i < words.length
    if words[i][/[A-z\-+]/].nil?
      cloud[word.downcase] += 1 if word != ""
      word = ""
    else
      word += words[i]
    end
    i += 1
  end
  return cloud
end

words = 'After beating-the eggs, Dana read the next step: Add milk and eggs, then add flour and sugar.'

p word_cloud(words)
p word_cloud_deluxe(words)
p word_cloud(words) == word_cloud_deluxe(words)
