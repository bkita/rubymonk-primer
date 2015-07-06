require 'minitest/autorun'
require '../src/orders_and_costs/restaurant'

class RestaurantTest < Minitest::Test

  def test_one_order_returns_correct_sum
    count = Restaurant.new({:rice => 3, :noodles => 2})
    assert_equal 5, count.cost({:rice => 1, :noodles => 1})
  end

  def test_two_orders_returns_correct_sum
    count = Restaurant.new({:rice => 3, :noodles => 2})
    assert_equal 15, count.cost({:rice => 1, :noodles => 1}, {:rice => 2, :noodles => 2})
  end

end