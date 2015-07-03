require 'minitest/autorun'
require '../src/are_all_elements_fixnum/fixnum_all'

class FixnumAllTest < Minitest::Test

  def test_first_element_returns_true_for_fixnum
    f = make_fixnum_all
    assert_equal true, f.array_of_fixnums?([1])
  end

  def test_first_element_returns_false_for_string
    f = make_fixnum_all
    assert_equal false, f.array_of_fixnums?(['1'])
  end

  def test_first_element_returns_false_for_symbol
    f = make_fixnum_all
    assert_equal false, f.array_of_fixnums?([:symbol])
  end

  def test_empty_array_returns_true
    f = make_fixnum_all
    assert_equal true, f.array_of_fixnums?([])
  end

  def test_array_with_fixnums_only_returns_true
    f = make_fixnum_all
    assert_equal true, f.array_of_fixnums?([1,2,3])
  end

  def test_array_with_mixed_types_returns_false
    f = make_fixnum_all
    assert_equal false, f.array_of_fixnums?(['a',1,:b])
  end



  private
  def make_fixnum_all
    FixnumAll.new
  end

end