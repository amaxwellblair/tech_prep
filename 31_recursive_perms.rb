# 800 830
# 853 - complete
# Write a recursive function for generating all permutations of an input string.
# Return them as a set.
# Don't worry about time or space complexity—if we wanted efficiency we'd write
# an iterative version.
#
# To start, assume every character in the input string is unique.
#
# Your function can have loops—it just needs to also be recursive.


def all_da_perms(word, set = {})
  if word.length == 1
    set[word] = 1
    return set
  else
    words = all_da_perms(word[0..-2], set).keys
    set = {}
    letter, word = word[-1], word[0..-2]
    words.each do |substring|
      i = 0
      while i <= substring.length
        set[substring.dup.insert(i, letter)] = 1
        i += 1
      end
    end
    return set
  end
end

word = "abcd"

p all_da_perms(word)

# {"abc" => 1, "acb" => 1, "bac" => 1, "bca" => 1, "cba" => 1, "cab" => 1,}
