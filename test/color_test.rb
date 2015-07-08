require 'minitest/autorun'
require '../src/color/color'

class ColorTest < Minitest::Test

  def test_initializes_the_color_with_the_rgb_values_return_rgb_colors
    color1 = Color.new(1, 2, 3)
    assert_equal 1, color1.r
    assert_equal 2, color1.g
    assert_equal 3, color1.b
  end

  def test_42_21_58_returns_correct_brightness_index
    color = Color.new(42,21,58)
    assert_equal 31, color.brightness_index
  end

  def test_100_200_255_returns_correct_brightness_index
    color = Color.new(42,21,58)
    assert_equal 31, color.brightness_index
  end

  def test_enough_contrast_returns_true
    color1 = Color.new(42, 42, 42)
    color2 = Color.new(210, 210, 210)
    assert_equal true, color1.enough_contrast?(color2)
  end

  def test_enough_contrast_returns_false
    color1 = Color.new(42, 21, 58)
    color2 = Color.new(240, 41, 25)
    assert_equal false, color1.enough_contrast?(color2)
  end

end