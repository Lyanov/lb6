require 'minitest/autorun'

require_relative 'lr6_2'

class Test < MiniTest::Unit::TestCase
  def test_1
    assert_in_epsilon(calc(0.01), 0.041666666666666664)
  end
end
