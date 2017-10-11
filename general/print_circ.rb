a = [[2,4,6,8],
     [5,9,12,16],
     [2,11,5,9],
     [3,2,1,8]]

def print_circ(arr, row, col)
  t = 0
  b = row - 1
  l = 0
  r = col - 1
  dir = 0
  while t <= b and l <= r do
    if dir == 0
      for i in l..r
        puts arr[t][i]
      end
      t += 1
    end
    if dir == 1
      for i in t..b
        puts arr[i][r]
      end
      r -= 1
    end
    if dir == 2
      for i in r.downto(l)
        puts arr[b][i]
      end
      b -= 1
    end
    if dir == 3
      for i in b.downto(t)
        puts arr[i][l]
      end
      l += 1
    end
    dir = (dir+1)%4
  end
end

puts print_circ(a, 4, 4)
