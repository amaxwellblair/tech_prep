# 717 - 747
# 740 - done -> but incorrect due to common gotcha
# correct solution - not exactly the same as theirs but similar efficiency
# check it out their way if you have time


# Write a function to check that a binary tree ↴ is a valid binary search tree ↴ .
# Here's a sample binary tree node class:
#
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

  def valid_bst?()
    if value == nil
      return true
    end
    i = 0
    sorted = check_bst()
    while i < sorted.length
      return false if !sorted[i+1].nil? && sorted[i] > sorted[i+1]
      i += 1
    end
    return true
  end

  def check_bst(node = self, sorted = [])
    if !node.left.nil?
      sorted = check_bst(node.left, sorted)
    end

    sorted << node.value

    if !node.right.nil?
      sorted = check_bst(node.right, sorted)
    end

    return sorted
  end
end

tree = BinaryTreeNode.new(10)
tree.insert_left(8).insert_right(9)
tree.insert_right(11).insert_right(12)

puts tree.valid_bst?()

tree = BinaryTreeNode.new(10)
tree.insert_left(100).insert_right(9)
tree.insert_right(11).insert_right(12)

puts tree.valid_bst?()
