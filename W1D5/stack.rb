class Stack
  attr_accessor :stack
  def initialize(stack)
    @stack = stack
  end

  def push(el)
    @stack.push(el)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.first
  end
end
