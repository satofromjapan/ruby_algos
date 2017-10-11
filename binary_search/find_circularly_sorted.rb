# find the index of a given element in a circulary sorted array (no duplicate elements in the array)

a = [12,14,18,21,3,6,8,9]
val = 0

def circ_arr_search(a, val)
  start = 0
  stop = a.length-1
  while start <= stop do
    mid = (start + stop) / 2
    if val == a[mid]
      return mid
    end
    if a[mid] <= a[stop] #checks to see if the right half is sorted
      if val > a[mid] and val <= a[stop]
        start = mid + 1
      else
        stop = mid - 1
      end
    else
      if val >= a[start] and val < a[mid]
        stop = mid - 1
      else
        start = mid + 1
      end
    end

  end
  return -1

end

if circ_arr_search(a, val) == -1
  puts val.to_s + " is not in the array"
else
  puts val.to_s + " is located at index " + circ_arr_search(a, val).to_s + " in the array."
end
