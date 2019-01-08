STARTING = 1.0
ENDING = 2.0

Integrator = Enumerator.new do |y|
  n = 1.0
  y << { sum: 0, iters: 0 }
  loop do
    integral = 0
    delta = (ENDING - STARTING) / n
    (0..(n - 1)).each do |i|
      x = STARTING + (i * delta)
      square = Math.log(x) * delta
      integral += square
    end
    n += 1
    y << { sum: integral, iters: n - 1}
  end
end