# 908 938
# 942 - complete basically correct :D

# Write a function to find the 2nd largest element in a binary search tree ↴ .
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

    def max_or_sec_value(node = self)
      if node.right.nil? && node.left.nil?
        return node.value
      elsif node.right.nil?
        return node.left
      else
        max_or_sec_value(node.right)
      end
    end

    def second_max(node = self)
      thing = max_or_sec_value()
      if thing.class == BinaryTreeNode
        right_most(thing)
      else
        return thing
      end
    end

    def right_most(node = self)
      if node.right.nil?
        return node.value
      else
        right_most(node.right)
      end
    end

end

tree = BinaryTreeNode.new(8)
right = tree.insert_right(9).insert_right(12)
right.insert_left(10)
tree.insert_left(6).insert_right(7)

p tree.max_or_sec_value()
p tree.second_max()
