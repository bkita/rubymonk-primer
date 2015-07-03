class YourSum

  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if !block_given? && initial_value == 0
      return @array.reduce(:+)
    elsif !block_given? && initial_value != 0
      return @array.reduce(:+) + initial_value
    elsif block_given? && initial_value == 0
      new_arr = @array.map { |n| yield n }
      new_arr.reduce(:+)
    elsif block_given? && initial_value != 0
      new_arr = @array.map { |n| yield n }
      new_arr.reduce(:+) + initial_value
    end
  end

  # def sum(initial_value = 0)
  #   return array.inject(:+) + initial_value unless block_given?
  #   sum = initial_value
  #   array.each {|n| sum += yield(n) }
  #   sum
  # end

end