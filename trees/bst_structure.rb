class BSTNode
  attr_accessor :val, :left, :right

  def initialize(val, left, right)
    @val = val
    @left = left
    @right = right
  end
end

class BST
  attr_accessor :root

  def initialize(val)
    @root = BSTNode.new(val, nil, nil)
  end
  
end
