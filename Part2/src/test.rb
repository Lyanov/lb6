#!usr/bin/env ruby
require_relative 'integrator'
require 'minitest/autorun'

# Testing class
class Tester < Minitest::Test
  def test_third_order
    int = Integrator.take_while { |i| (0.3862943611199 - i[:sum]).abs > 10**-3 }
    int.flatten!
    assert_in_delta(int[-1][:sum], 0.3862943611199, 10**-3)
  end

  def test_fourth_order
    int = Integrator.take_while { |i| (0.3862943611199 - i[:sum]).abs > 10**-3 }
    int.flatten!
    assert_in_delta(int[-1][:sum], 0.3862943611199, 10**-4)
  end
end