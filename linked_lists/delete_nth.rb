class Node
  attr_accessor :val, :next
  def initialize(val, next_node)
    @val = val
    @next = next_node
  end
end

class LinkedList
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

  def delete_at(n)
    current = @head
    count = 1
    while count < n - 1
      current = current.next
      count += 1
    end
    current.next = current.next.next
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

my_list = LinkedList.new(2)
my_list.add(5)
my_list.add(3)
my_list.add(7)
my_list.add(9)
my_list.delete_at(4)
puts my_list.display
