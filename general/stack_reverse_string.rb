# Use a stack to reverse a string

str = "This is my string!"

def reverse_stack(string)
  stack = []
  for i in 0...string.length
    stack << string[i]
  end
  for j in 0...string.length
    string[j] = stack.pop
  end
  return string
end

puts reverse_stack(str)
