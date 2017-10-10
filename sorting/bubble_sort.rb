def bubble_sort(ar)
  (1...ar.length).each do |k|
    flag = false
    (0...ar.length-1).each do |i|
      if ar[i] > ar[i+1]
        temp = ar[i]
        ar[i] = ar[i+1]
        ar[i+1] = temp
        flag = true
      end
    end
    if !flag
      break
    end
  end
  return ar
end



a = [2,7,4,1,5,3]


puts bubble_sort(a)
