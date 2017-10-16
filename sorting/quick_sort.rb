a = [7,2,1,6,8,5,3,4]

def quick_sort(arr, start, stop)

  if start < stop
    p_index = partition(arr, start, stop)
    quick_sort(arr, start, p_index-1)
    quick_sort(arr, p_index+1, stop)
  end

end

def partition(arr, start, stop)
  pivot = arr[stop]
  p_index = start
  for i in start...stop
    if arr[i] <= pivot
      swap(arr, i, p_index)
      # temp = arr[i]
      # arr[i] = arr[p_index]
      # arr[p_index] = temp
      p_index = p_index + 1
    end
  end
  swap(arr, p_index, stop)
  # temp = arr[p_index]
  # arr[p_index] = arr[stop]
  # arr[stop] = temp
  return p_index
end

def swap(arr, a, b)
  temp = arr[a]
  arr[a] = arr[b]
  arr[b] = temp
end


puts quick_sort(a, 0, a.length-1)
puts a
