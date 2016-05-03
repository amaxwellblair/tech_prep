#102 132
# got pretty close at 131 but wasn't correct or clean

# hmmm tried again go the right answer with plenty of hints.
# need to do this again as it is a really common interview question

# You're working on a secret team solving coded transmissions.
# Your team is scrambling to decipher a recent message, worried it's a plot to
# break into a major European National Cake Vault. The message has been mostly
# deciphered, but all the words are backwards! Your colleagues have handed off
# the last step to you.
#
# Write a function reverse_words() that takes a string message and reverses the
#  order of the words in-place ↴ .
#
# For example:
#
#   message = 'find you will pain only go you recordings security the into if'
#
# reverse_words(message)
# # returns: 'if into the security recordings you go only pain will you find'
#
# When writing your function, assume the message contains only letters and
# spaces, and all words are separated by one space.

def reverse(message, start = 0, finish = message.length - 1)
  i = 0
  while i <= (finish - start) / 2
    message[start + i], message[finish - i] = message[finish - i], message[start + i]
    i += 1
  end
  return message
end

def reverse_words(message)
  reverse(message)
  i = 0
  start = 0
  while i < message.length
    if message[i] == " "
      reverse(message, start, i-1)
      i += 1
      start = i
    end
    i +=1
  end

  reverse(message, start, i-1)
  return message
end



message = 'find you will pain only go you recordings security the into if'

# puts message
# puts reverse(message)
puts reverse_words(message)

# puts 'if into the security recordings you go only pain will you find'
