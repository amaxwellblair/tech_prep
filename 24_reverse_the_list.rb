# 221-251
# 244 - seems inefficient - yea you were like n^2
# 320 omg you failed like a burning dumpster fire with hints you still couldn't
# prevail...

# Hooray! It's opposite day. Linked lists go the opposite way today.
# Write a function for reversing a linked list ↴ . Do it in-place ↴ .
#
# Your function will have one input: the head of the list.
#
# Your function should return the new head of the list.
#
# Here's a sample linked list node class:

  class LinkedListNode

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next  = nil
    end

    def insert(da_value, node = self)
      if self.value == nil
        self.value = da_value
      elsif node.next.nil?
        node.next = LinkedListNode.new(da_value)
      else
        insert(da_value, node.next)
      end
    end
  end


  require 'pry'
  # node, deep_node = nil
  def reverse(node)
    current = node.next
    node.next = nil
    previous = node

    while current
      forward = current.next
      current.next = previous
      previous = current
      current = forward
    end

    return previous

    # if node.next.nil?
    #   return node
    # else
    #   deep_node = reverse(node.next, deep_node)
    #   deep_node.insert(node.value)
    # end
    # return deep_node
  end


  c = LinkedListNode.new(10)
  c.next = LinkedListNode.new(11)
  p reverse(c)
  p "\n"

  a = LinkedListNode.new(4)
  b = LinkedListNode.new(5)
  c = LinkedListNode.new(6)

  a.next = b
  b.next = c
  c.insert(10)

  p a
  p reverse(a)
