# Find a subarray within the array with the maximum sum

a = [1,-3,2,-5,7,6,-1,-4,11,-23]
n = a.length

# Brute force approach

def brute_max_sub(arr)
  result = -1000
  (1..arr.length).each do |size|
    (0...arr.length).each do |start|
      if start + size > arr.length
        break
      end
      sum = 0
      (start...(start + size)).each do |i|
        sum += arr[i]
      end
      if result < sum
        result = sum
      end
    end
  end
  return result
end

puts "brute force solution"
puts brute_max_sub(a)

# optimized brute force approach

def opt_max_sum(arr)
  result = -1000
  (0...arr.length).each do |start|
    sum = 0
    (1..arr.length).each do |size|
      if start + size > arr.length
        break
      end
      sum += arr[start + size - 1]
      if sum > result
        result = sum
      end
    end
  end
  return result
end

puts "optimized brute forxe solution"
puts opt_max_sum(a)

#Kadane's Algorithm

def kadane(a)
  sum = a[0]
  result = a[0]
  (1...a.length).each do |i|
    if a[i] < sum + a[i]
      sum = sum + a[i]
    else
      sum = a[i]
    end
    if sum > result
      result = sum
    end
  end
  return result
end

puts "Kadane's algorithm"
puts kadane(a)
