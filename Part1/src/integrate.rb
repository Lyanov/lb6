require_relative 'rect_calculate'

ACCURATE = 0.3862943611199

def integrate_ln(start_value, end_value, accuracy)
  n = 1
  precision = 1
  while precision > accuracy
    integral = rect_calculate(start_value, end_value, n)
    precision = (ACCURATE - integral).abs
    n += 1
  end
  { sum: integral, iters: n - 1 }
end