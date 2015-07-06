class Restaurant

  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    rice_order = 0
    noodle_order = 0

    orders.each do |order|
      rice_order += order[:rice]
      noodle_order += order[:noodles]
    end

    rice_order * @menu[:rice] + noodle_order * @menu[:noodles]
  end

end
