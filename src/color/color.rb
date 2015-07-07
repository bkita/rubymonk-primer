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
    # If Brightness difference is more than 125 and the Hue difference is more than 500 then the colors have sufficient contrast
    # Find out if the given color combos have sufficient contrast and get all the tests passing.

    if brightness_difference(another_color) > 125 and hue_difference(another_color) > 500
      puts "tells that there is is enough contrast between (#@r, #@g, #@b) and (#{another_color.r}, #{another_color.g}, #{another_color.b})"
    else
      puts puts "tells that there is is not enough contrast between (#@r, #@g, #@b) and (#{another_color.r}, #{another_color.g}, #{another_color.b})"
    end
  end

end