# Using binary search to find first or last occurence in a sorted array

def binary_search_first(a, val)
  start = 0
  stop = a.length - 1
  result = -1
  while start <= stop do
    mid = (start + stop) / 2
    if val == a[mid]
      result = mid
      stop = mid - 1
    elsif val < a[mid]
      stop = mid - 1
    else
      start = mid + 1
    end
  end
  return result
end

def binary_search_last(a, val)
  start = 0
  stop = a.length - 1
  result = -1
  while start <= stop do
    mid = (start + stop) / 2
    if val == a[mid]
      result = mid
      start = mid + 1
    elsif val < a[mid]
      stop = mid - 1
    else
      start = mid + 1
    end
  end
  return result
end

arr = [2,4,10,10,10,18,20]
val = 10
puts "The first occurance of value " + val.to_s + " was found at index " + (binary_search_first(arr, val)).to_s

puts "The last occurance of value " + val.to_s + " was found at index " + (binary_search_last(arr, val)).to_s
