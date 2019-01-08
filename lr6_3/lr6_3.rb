def minmax(a, b, eps)
  min = 100_500
  max = -100_500

  # y1 = (x-1)/(x-2) # x = 0..2
  # y2 = Math.sin((x/2)-1) # x = -1..+1

  x = a
  while x < b
    y = yield x
    min = y if y < min
    max = y if y > max
    x += eps
  end

  [max, min]
end
