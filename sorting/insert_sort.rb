def insert_sort(arr)
  (1...arr.length).each do |j|
    # create the sorted portion in the array
    key = arr[j]
    i = j - 1
    while i >= 0 and arr[i] > key do
      arr[i+1] = arr[i]
      i -= 1
    end
    arr[i+1] = key
  end
  return arr
end

a = [2,-7,4,5,9,3,-1,8]

puts insert_sort(a)
