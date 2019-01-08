#!usr/env/ruby
require_relative 'integrator'

ACCURATE = 0.3862943611199

puts 'Введите требуемую точность'
accuracy = gets.chomp.to_f

res = Integrator.take_while { |i| (ACCURATE - i[:sum]).abs > accuracy }
res.flatten!
puts 'Результат рассчета интеграла ln(x)'
puts res[-1][:sum]
puts 'Количество совершенных итераций'
puts res[-1][:iters]