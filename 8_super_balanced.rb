# 544 614
# complete 601 - correct but not iteratively
# if you need to redo problems do this iteratively

# Write a function to see if a binary tree ↴ is "superbalanced" (a new tree property we just made up).
# A tree is "superbalanced" if the difference between the depths of any two leaf nodes ↴ is no greater than one.
#
# Here's a sample binary tree node class:

  class BinaryTreeNode
    attr_accessor :value
    attr_reader :left, :right

    def initialize(value)
        @value = value
        @left  = nil
        @right = nil
    end

    def insert_left(value)
        @left = BinaryTreeNode.new(value)
        return @left
    end

    def insert_right(value)
        @right = BinaryTreeNode.new(value)
        return @right
    end

    def balance?()
      puts superbalanced
      superbalanced().length <= 2
    end

    def superbalanced(node = self, mem = Hash.new(0), depth = 0)
      if node.left.nil?
        mem[depth] += 1
      else
        mem.merge(superbalanced(node.left, mem, depth + 1))
      end

      if node.right.nil?
        mem[depth] += 1
      else
        mem.merge(superbalanced(node.right, mem, depth + 1))
      end

      mem
    end
  end

tree = BinaryTreeNode.new(10)
left = tree.insert_left(9)
left.insert_right(6)

right = tree.insert_right(10)
right.insert_left(5)

puts tree.balance?()

tree = BinaryTreeNode.new(10)
left = tree.insert_left(9)

right = tree.insert_right(10)
right.insert_right(8).insert_right(5)


puts tree.balance?()
