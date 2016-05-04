# 448 518
# 508 complete and efficient :D
# Write an efficient function that checks whether any permutation ↴ of an input string is a palindrome ↴ .
# Examples:

# "civic" should return true
# "ivicc" should return true
# "civil" should return false
# "livci" should return false
# "But 'ivicc' isn't a palindrome!"


# If you had this thought, read the question again carefully. We're asking if
# any permutation of the string is a palindrome. Spend some extra time ensuring
# you fully understand the question before starting. Jumping in with a flawed
# understanding of the problem doesn't look good in an interview.

def any_palins(word)
  i = 0
  things = Hash.new(0)
  while i < word.length
    things[word[i]] += 1
    i += 1
  end

  thing = false
  things.each do |key, value|
    if value != 2
      if value == 1 && thing == false
        thing = true
        next
      end
      return false
    end
  end
  return true
end

puts any_palins("civic")
puts true
puts any_palins("ivicc")
puts true
puts any_palins("civil")
puts false
puts any_palins("livci")
puts false
