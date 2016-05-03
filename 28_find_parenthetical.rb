# 245 - 315

# I like parentheticals (a lot).
# "Sometimes (when I nest them (my parentheticals) too much
# (like this (and this))) they get confusing."
#
# Write a function that, given a sentence like the one above, along with the
# position of an opening parenthesis, finds the corresponding closing
# parenthesis.
#
# Example: if the example string above is input with the number 10
# (position of the first parenthesis), the output should be 79
# (position of the last parenthesis).


def paren(target, message)
  i = target + 1
  stack = 0

  while i < message.length
    if message[i] == ")"
      if stack == 0
        return i
      else
        stack -= 1
      end
    elsif message[i] == "("
      stack += 1
    end
    i +=1
  end
  return nil
end



sample = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
puts paren(10, sample)
puts 79
