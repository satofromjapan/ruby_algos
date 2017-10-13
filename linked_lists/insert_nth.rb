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

  def insert_at(val, n)
    new_node = Node.new(val, nil)
    if n == 1
      new_node.next = @head
      @head = new_node
      return
    end
    current = @head
    count = 1
    while count < n - 1
      current = current.next
      count += 1
    end
    next_node = current.next
    current.next = new_node
    new_node.next = next_node
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
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
my_list.add(4)
my_list.add(6)
my_list.insert_at(8, 3)
my_list.insert_at(10, 5)
my_list.insert_at(1, 1)

# my_list = LinkedList.new(nil)
# my_list.insert_at(2, 1)

puts my_list.display
