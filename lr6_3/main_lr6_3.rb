require_relative 'lr6_3'

y2 = ->(x) { Math.sin((x / 2) - 1) }
y1 = ->(x) { ((x - 1) / (x - 2)).to_f }

p minmax(0.0, 2.0, 0.01, &y2)

p minmax(-1.0, 1.0, 0.01, &y1)

p minmax(-1.0, 5.0, 0.01) { |x| Math.sin((x / 2) - 1) }
