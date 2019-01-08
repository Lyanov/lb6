def rect_calculate(starting, ending, steps)
  integral = 0
  delta = (ending - starting) / steps
  (0..(steps - 1)).each do |i|
    x = starting + (i * delta)
    square = Math.log(x) * delta
    integral += square
  end
  integral
end