

require_relative 'lr6_3'
require 'minitest/autorun'

class Test < Minitest::Unit::TestCase
  Y2 = ->(x) { Math.sin((x / 2) - 1) }
  Y1 = ->(x) { ((x - 1) / (x - 2)).to_f }

  def test_2
    result = minmax(Y2, -1.0, 1.0, 0.01)
    assert_in_epsilon(result[0], -0.4838074403239595)
    assert_in_epsilon(result[1], -0.9974949866040544)
  end

  def test_1
    result = minmax(Y1, 0.0, 2.0, 0.01)
    assert_in_epsilon(result[0], 0.5)
    assert_in_epsilon(result[1], -99.00000000001546)
  end
end
