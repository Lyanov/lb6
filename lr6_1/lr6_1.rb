puts "Вычисление суммы ряда \n"

def calc(eps)
  k = 1.0
  sum = 0
  puts "eps = #{eps}"

  while 1 / 18.0 - eps >= sum
    sum += (1 / (k * (k + 1) * (k + 2) * (k + 3)))
    k += 1.0
    # puts "#{(1 / (k * (k + 1) * (k + 2) * (k + 3)))} \n"
  end
  # puts "Итоговая сумма ряда = #{sum}"
  sum
end
