# 837-907
# 850 - completed with a bonus :D

# You have a linked list ↴ and want to find the kth to last node.
# Write a function kth_to_last_node() that takes an integer k and the head_node
# of a singly linked list, and returns the kth to last node in the list.
#
# For example:
#
  class LinkedListNode

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next  = nil
    end
  end

  def kth_node(k, node)
    slower = node
    faster = node

    slow_count = 1

    while faster
      if faster.next.nil?
        return slower
      end

      if slow_count == k
        slower = slower.next
      else
        slow_count += 1 if slow_count < 5
      end

      faster = faster.next
    end

    raise IndexError, 'k is larger than the length of the linked list!'
  end

a = LinkedListNode.new("Angel Food")
b = LinkedListNode.new("Bundt")
c = LinkedListNode.new("Cheese")
d = LinkedListNode.new("Devil's Food")
e = LinkedListNode.new("Eccles")

a.next = b
b.next = c
c.next = d
d.next = e

puts kth_node(2, a).value
# returns the node with value "Devil's Food" (the 2nd to last node)
