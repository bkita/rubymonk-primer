require 'minitest/autorun'
require '../src/number_shuffle/numbers'

class NumberShuffleTest < Minitest::Test

  def test_two_digits_returns_array_with_two_elenets
    num = make_numbers
    assert_equal 2, num.number_shuffle(12).size
  end

  def test_three_digits_returns_array_with_six_elenets
    num = make_numbers
    assert_equal 6, num.number_shuffle(123).size
  end

  def test_one_digit_returns_array_with_one_element
    num = make_numbers
    assert_equal 1, num.number_shuffle(0).size
  end

  def test_non_number_returns_0
    num = make_numbers
    assert_equal 0, num.number_shuffle('123')
  end

  def test_123_returns_array_with_six_sorted_elements
    num = make_numbers
    assert_equal [123, 132, 213, 231, 312, 321], num.number_shuffle(123)
  end

  def test_1234_returns_array_with_24_sorted_elements
    num = make_numbers
    assert_equal [1234, 1243, 1324, 1342, 1423, 1432, 2134, 2143, 2314, 2341, 2413, 2431, 3124, 3142, 3214, 3241, 3412, 3421,
                  4123, 4132, 4213, 4231, 4312, 4321], num.number_shuffle(1234)
  end

  private
  def make_numbers
    Numbers.new
  end
end