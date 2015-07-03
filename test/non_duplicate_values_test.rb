require 'minitest/autorun'
require '../src/non_duplicate_values_in_array/non_duplicate_values'

class NonDuplicateValuesTest < Minitest::Test

  def test_array_with_one_element_returns_that_element
    ndv = make_non_duplicate_values
    arr_size = ndv.non_duplicated_values([1]).size
    assert_equal 1, arr_size
  end

  def test_array_with_two_the_same_elements_returns_empty_array
    ndv = make_non_duplicate_values
    arr_size = ndv.non_duplicated_values([1, 1]).size
    assert_equal 0, arr_size
  end

  def test_array_with_two_the_same_elements_and_one_unique_returns_one_element
    ndv = make_non_duplicate_values
    arr_size = ndv.non_duplicated_values([1, 2, 1]).size
    assert_equal 1, arr_size
  end


  def test_rubymonk_at1_returns_3_elements
    ndv = make_non_duplicate_values
    arr_size = ndv.non_duplicated_values([1,2,2,3,3,4,5]).size
    assert_equal 3, arr_size
  end

  def test_rubymonk_at2_returns_3_elements
    ndv = make_non_duplicate_values
    arr_size = ndv.non_duplicated_values([1,2,2,3,4,4]).size
    assert_equal 2, arr_size
  end

  private
  def make_non_duplicate_values
    NonDuplicateValues.new
  end
end