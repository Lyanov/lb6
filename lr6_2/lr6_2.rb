def calc(eps)
  list = Enumerator.new do |sum|
    k = 1.0
    loop do
      sum << (1 / (k * (k + 1) * (k + 2) * (k + 3)))
      k += 1.0
    end
  end

  yo = 0
  p list.take_while { |sum|
    yo += sum
    (1 / 18.0 - yo).abs >= eps
  }.inject(0, :+)
end
