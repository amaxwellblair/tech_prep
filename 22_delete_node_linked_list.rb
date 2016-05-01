# 1200 1230
# don't love this problem
# specifically it doesn't work for the last node in a linked list which
# means we shouldnt even use this method. Thanks

# Delete a node from a singly-linked list ↴ , given only a variable pointing to
# that node.
# The input could, for example, be the variable b below:
#
  class LinkedListNode

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next  = nil
    end

  end

  def delete_node(node)
    node.value = node.next.value
    node.next = node.next.next
  end

a = LinkedListNode.new('A')
b = LinkedListNode.new('B')
c = LinkedListNode.new('C')

a.next = b
b.next = c

delete_node(b)

p a
