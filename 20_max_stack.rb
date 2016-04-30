# 422-452
# completed 452 but with hints...

# You want to be able to access the largest element in a stack.
# You've already implemented this Stack class:

class Stack

  # initialize an empty array
  def initialize
      @items = []
      @max_stack = []
  end

  # push a new item to the last index
  def push(item)
      @items.push(item)
      if @max_stack.empty?
        @max_stack.push(item)
      else
        @max_stack.push(item) if @max_stack.last < item
      end
  end

  # remove the last item
  def pop()


      # if the stack is empty, return nil
      # (it would also be reasonable to throw an exception)
      return nil if @items.empty?
      @max_stack.pop() if @max_stack.last ==  @items.last
      return @items.pop()
  end

  # see what the last item is
  def peek()
      return nil if @items.empty?
      return @items[-1]
  end

  def max()
    @max_stack.last()
  end
end

thing = Stack.new()
thing.push("bacon")
thing.push("poptart")
thing.push("butter")
thing.pop()

puts thing.max()
