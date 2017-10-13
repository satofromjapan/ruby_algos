class Node
  attr_accessor :val, :left, :right

  def initialize(val, left, right)
    @val = val
    @left = left
    @right = right
  end
end

class BinarySearchTree
  attr_accessor :root

  def initialize(val)
    @root = Node.new(val, nil, nil)
  end
end
