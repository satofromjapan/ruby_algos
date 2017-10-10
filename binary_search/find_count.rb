# Use binary serach to find the count of an element in a sorted array of integers

a = [1,1,3,3,5,5,5,5,5,9,9,11]
element = 5

# iterative method

def find_count(a, element)
  count = 0
  a.each do |e|
    if e == element
      count += 1
    elsif e > element
      break
    end
  end
  return count
end

puts "Iterative solution"
puts element.to_s + " was found in the array " + (find_count(a, element).to_s) + " times."

# binary search method

def find_first(a, element)
  start = 0
  stop = a.length - 1
  result = -1
  while start <= stop do
    mid = (start + stop) / 2
    if a[mid] == element
      result = mid
      stop = mid - 1
    elsif element < a[mid]
      stop = mid - 1
    else
      start = mid + 1
    end
  end
  return result
end

def find_last(a, element)
  start = 0
  stop = a.length - 1
  result = -1
  while start <= stop do
    mid = (start + stop) / 2
    if a[mid] == element
      result = mid
      start = mid + 1
    elsif element < a[mid]
      stop = mid - 1
    else
      start = mid + 1
    end
  end
  return result
end

def find_count_binary(a, element)
  first = find_first(a, element)
  last = find_last(a, element)
  return (last - first + 1)
end

puts "Binary search solution"
puts element.to_s + " was found in the array " + (find_count_binary(a, element).to_s) + " times."
