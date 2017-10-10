# using binary search find how many times a sorted array is rotated to the right

a = [5,6,8,11,12,15,18,2,]

# linear search

def linear_search(a)
  min = a[0]
  min_index = 0
  (0...a.length).each do |i|
    if a[i] < min
      min = a[i]
      min_index = i
    end
  end
  return "The sorted array has been rotated to the right " + min_index.to_s + " times."
end

puts "linear solution"
puts linear_search(a)

#binary search

def binary_search_rotated(a)
  start = 0
  stop = a.length - 1
  while start <= stop do
    if a[start] <= a[stop]
      return start
    end
    mid = (start + stop) / 2
    nex = ((mid + 1) % (a.length))
    prev = ((mid+(a.length) - 1)% (a.length))
    if a[mid] <= a[nex] and a[mid] <= a[prev]
      return mid
    elsif a[mid] <= a[stop]
      stop = mid - 1
    elsif a[mid] >= a[start]
      start = mid + 1
    end
  end
  return -1
end

puts "binary solution"
puts binary_search_rotated(a)
