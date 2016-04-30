# 144 214
# 156 - complete the right way :D

# Write a function fib() that a takes an integer n and returns the nth
# fibonacci ↴ number.
# Let's say our fibonacci series is 0-indexed and starts with 0. So:
#
# fib(0) # => 0
# fib(1) # => 1
# fib(2) # => 1
# fib(3) # => 2
# fib(4) # => 3
# ...

def fib(num)
  return 0 if num == 0

  init = 0
  second = 1
  index = 1
  while index < num
    second, init = (init + second), second
    index += 1
  end

  return second
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
