#!usr/bin/env ruby
require_relative 'integrate.rb'
require 'minitest/autorun'

# Testing class
class Tester < Minitest::Test
  def test_third_order
    integral = integrate_ln(1.0, 2.0, 0.001)
    assert_in_delta(integral[:sum], 0.3862943611199, 10**-3)
  end

  def test_fourth_order
    integral = integrate_ln(1.0, 2.0, 0.0001)
    assert_in_delta(integral[:sum], 0.3862943611199, 10**-4)
  end
end