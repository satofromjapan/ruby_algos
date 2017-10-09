def merge(l, r, a)
  l_len = l.length
  r_len = r.length
  i = 0
  j = 0
  k = 0
  while (i < l_len) and (j < r_len) do
    if l[i] <= r[j]
      a[k] = l[i]
      i+=1
    else
      a[k] = r[j]
      j+=1
    end
    k+=1
  end
  while i < l_len do
    a[k] = l[i]
    i+=1
    k+=1
  end
  while j < r_len do
    a[k]=r[j]
    j+=1
    k+=1
  end
  return a
end

def merge_sort(arr)
  n = arr.length
  if n < 2
    return arr
  end
  mid_index = n / 2
  left = []
  right = []
  (0...mid_index).each do |i|
    left << arr[i]
  end
  (mid_index...n).each do |j|
    right << arr[j]
  end
  merge_sort(left)
  merge_sort(right)

  return merge(left, right, arr)
end



a = [2,-4,1,6,-8,5,3,7]

puts merge_sort(a)
