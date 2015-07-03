class Cubes

  def sum_of_cubes(a,b)
    raise ArgumentError.new('Range elements can not be zero') if a == 0 || b == 0

    sum = 0
    (a..b).each do |cube|
      sum += cube**3
    end
    sum
  end

end