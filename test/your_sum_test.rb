require 'minitest/autorun'
require '../src/your_sum/your_sum'

class YourSumTest < Minitest::Test

  def test_sum_of_123_returns_6
    my_array = YourSum.new([1, 2, 3])
    assert_equal 6, my_array.sum
  end

  def test_sum_of_123_plus_10_returns_16
    my_array = YourSum.new([1, 2, 3])
    assert_equal 16, my_array.sum(10)
  end

  def test_sum_of_123_plu_block_returns_14
    my_array = YourSum.new([1, 2, 3])
    assert_equal 14, my_array.sum {|n| n**2}
  end

  def test_sum_of_123_plu_block_returns_15
    my_array = YourSum.new([1, 2, 3])
    assert_equal 15, my_array.sum(1) {|n| n**2}
  end

end