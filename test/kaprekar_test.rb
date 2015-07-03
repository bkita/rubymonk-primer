require 'minitest/autorun'
require '../src/kaprekars_number/kaprekar'

class KaprekarTest < Minitest::Test


  def test_9_is_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal true, k.kaprekar?(9)
  end

  def test_55_is_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal true, k.kaprekar?(55)
  end

  def test_46_is_not_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal false, k.kaprekar?(46)
  end

  def test_90_is_not_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal false, k.kaprekar?(90)
  end

  def test_297_is_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal true, k.kaprekar?(297)
  end

  def test_298_is_not_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal false, k.kaprekar?(298)
  end

  def test_703_is_kaprekars_number_returns_true
    k = make_make_kaprekar
    assert_equal true, k.kaprekar?(703)
  end

  private
  def make_make_kaprekar
    Kaprekar.new
  end

end