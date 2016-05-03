# 1211 1241
# 1220 pretty good solution but meh not sure that is what they meant - well this is what they wanted :D
# Write a function to reverse a string in-place ↴ .

def reverse(stuff)
  i = 0
  while i < stuff.length / 2
    stuff[i], stuff[stuff.length - 1 - i] = stuff[stuff.length - 1 - i], stuff[i]
    i += 1
  end
  return stuff
end

pancakge = "hi my name is allan!"

puts pancakge
puts reverse(pancakge)

def reverse_all(stuff)
  stuff.split.reverse.join(" ")
end

pancakge = "hi my name is allan!"

puts pancakge
puts reverse_all(pancakge)
