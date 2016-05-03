# 415 445
# complete 435 correct time and space :D
# You're working with an intern that keeps coming to you with JavaScript code
# that won't run because the braces, brackets, and parentheses are off.
# To save you both some time, you decide to write a braces/brackets/parentheses
# validator.
# Let's say:
#
# '(', '{', '[' are called "openers."
# ')', '}', ']' are called "closers."
# Write an efficient function that tells us whether or not an input string's
# openers and closers are properly nested.
#
# Examples:
#
# "{ [ ] ( ) }" should return true
# "{ [ ( ] ) }" should return false
# "{ [ }" should return false

def bracket_valid(brackets)
  i = 0
  stack = []
  lefties = {"[" => "]", "(" => ")", "{" => "}" }
  righties = {"]" => "[", ")" => "(", "}" => "{" }

  while i < brackets.length
    if lefties[brackets[i]]
      stack << brackets[i]
    elsif righties[brackets[i]]
      if stack.last == righties[brackets[i]]
        stack.pop
      else
        return false
      end
    end
    i += 1
  end
  return true if stack.empty?
  return false

  # lefties = {"[" => 0, "(" => 0, "{" => 0 }
  # righties = {"]" => "[", ")" => "(", "}" => "{" }
  # while i < brackets.length
  #   if lefties[brackets[i]]
  #     lefties[brackets[i]] += 1
  #   elsif righties[brackets[i]]
  #     lefties[righties[brackets[i]]] -= 1
  #   end
  #   i += 1
  # end
  #
  # lefties.each do |key, value|
  #   return false if value != 0
  # end
  # return true
end

puts bracket_valid("{ [ ] ( ) }")
puts true

puts bracket_valid("{ [ ( ] ) }")
puts false

puts bracket_valid("{ [ }")
puts false
