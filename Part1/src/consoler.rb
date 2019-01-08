require_relative 'integrate'
puts 'Введите нижний предел интегрирования'
a = gets.chomp.to_f
puts 'Введите верхний предел интегрирования'
b = gets.chomp.to_f
puts 'Введите требуемую точность'
accuracy = gets.chomp.to_f
puts 'Результат выполнения:'
res = integrate_ln(a, b, accuracy)
puts res[:sum]
puts 'Количество итераций - ' + res[:iters].to_s