class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
    @val = val
    @next = next_node
  end
end

class LL
  attr_accessor :head
  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
  end

  def reverse_list
    current = @head
    prev = nil
    after = nil
    while current != nil do
      after = current.next
      current.next = prev
      prev = current
      current = after
    end
    @head = prev
    return self
  end

  def display
    elements = []
    current = @head
    while current.next != nil do
      elements << current.val
      current = current.next
    end
    elements << current.val

  end
end

my_list = LL.new(2)
my_list.add(4)
my_list.add(6)
my_list.add(5)
my_list.add(3)
puts my_list.display
puts "*******"
reversed =  my_list.reverse_list
puts reversed.display
