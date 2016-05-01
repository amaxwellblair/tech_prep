# 1246 - 116
# 1256 inefficient solution on space
# wierd solution - I need to do this again sometime. Not totally clear on how
# the math works on this efficiency

# You have a singly-linked list ↴ and want to check if it contains a cycle.
# A singly-linked list is built with nodes, where each node has:
#
# node.next—the next node in the list.
# node.data—the data held in the node. For example, if our linked list stores
# people in line at the movies, node.data might be the person's name.
# For example:
#
#   class LinkedListNode
#
#     attr_accessor :value, :next
#
#     def initialize(value)
#         @value = value
#         @next  = nil
#     end
# end
#
# A cycle occurs when a node’s @next points back to a previous node in the list.
# The linked list is no longer linear with a beginning and end—instead, it
# cycles through a loop of nodes.
#
# Write a function contains_cycle() that takes the first node in a
# singly-linked list and returns a boolean indicating whether the list contains
# a cycle.

  class LinkedListNode

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next  = nil
    end
  end

  def contains_cycle(node)




    # hsh = Hash.new(0)
    # while
    #   hsh[node] += 1
    #   if hsh[node] == 2
    #     return true
    #   elsif node.next.nil?
    #     return false
    #   end
    #   node = node.next
    # end
  end

  a = LinkedListNode.new(4)
  b = LinkedListNode.new(5)
  c = LinkedListNode.new(6)
  d = LinkedListNode.new(7)

  a.next = b
  b.next = c
  c.next = d

  puts contains_cycle(a)
  puts false

  a.next = b
  b.next = c
  c.next = d
  d.next = a

  puts contains_cycle(a)
  puts true
