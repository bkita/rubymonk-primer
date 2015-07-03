require 'minitest/autorun'
require '../src/sum_of_cubes/cubes'

class CubesTest < Minitest::Test

  def test_sum_one_cube_with_side_1_returns_1
    cube = make_cube
    assert_equal 1, cube.sum_of_cubes(1,1)
  end

  def test_sum_one_cube_with_side_3_returns_27
    cube = make_cube
    assert_equal 27, cube.sum_of_cubes(3,3)
  end

  def test_sum_of_cubes_with_range_1_to_3_returns_36
    cube = make_cube
    assert_equal 36, cube.sum_of_cubes(1,3)
  end

  def test_sum_of_cubes_with_range_3_to_5_returns_216
    cube = make_cube
    assert_equal 216, cube.sum_of_cubes(3,5)
  end

  def test_sum_one_cube_with_side_0_raises_exceptions
    cube = make_cube
    assert_raises(ArgumentError) {cube.sum_of_cubes(0, 0)}
  end

  private
  def make_cube
    Cubes.new
  end

end