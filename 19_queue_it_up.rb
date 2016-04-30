# 358

# I didn't understand this problem at all - and definitely didn't do it correctly.
# will attempt at another time

# Implement a queue ↴ with 2 stacks ↴ . Your queue should have an enqueue and a
# dequeue function and it should be "first in first out" (FIFO).
# Optimize for the time cost of mm function calls on your queue. These can be
# any mix of enqueue and dequeue calls.
#
# Assume you already have a stack implementation and it gives O(1) time
# push and pop.

@queue = []

def enqueue(value)
  @queue.push(value)
end

def dequeue()
  @queue.shift
end

@queue.enqueue("hello")
