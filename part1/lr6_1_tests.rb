require 'minitest/autorun'

require_relative 'lr6_1'

class Test < Minitest::Unit::TestCase
  def test_1
    assert_in_epsilon(calc(10**-5), 0.055546271538918585)
  end
end
