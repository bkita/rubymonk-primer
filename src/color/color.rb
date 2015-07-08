class Color

  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r.abs
    @g = g.abs
    @b = b.abs
  end

  def brightness_index
    (299*@r + 587*@g + 114*@b) / 1000
  end

  def brightness_difference(another_color)
    (self.brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (@r - another_color.r).abs + (@g - another_color.g).abs + (@b - another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 and hue_difference(another_color) > 500
  end

end