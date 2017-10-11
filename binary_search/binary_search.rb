a = [2,6,13,21,36,47,63,81,97]
val = 13

def linear_search(arr, v)
  (0...arr.length).each do |i|
    if arr[i] == v
      return i
    end
  end
  return -1
end

# puts linear_search(a, val)

def binary_search(arr, v)
  start = 0
  stop = arr.length - 1
  while start <= stop do
    mid = (start + stop) / 2
    if arr[mid] == v
      return mid
    elsif v < arr[mid]
      stop = mid - 1
    else
      start = mid + 1
    end
  end
  return -1
end

# puts binary_search(a, val)

def recurrsive_binary_search(arr, s, e, v)
  if s > e
    return -1
  end
  mid = (s + e) / 2
  if arr[mid] == v
    return mid
  elsif v < arr[mid]
    return recurrsive_binary_search(arr, s, mid-1, v)
  else
    return recurrsive_binary_search(arr, mid + 1, e, v)
  end
end

puts recurrsive_binary_search(a, 0, a.length-1, val)
