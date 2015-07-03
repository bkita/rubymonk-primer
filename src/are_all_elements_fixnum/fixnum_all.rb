class FixnumAll

  def array_of_fixnums?(array)
    return true if array.size == 0

    # array.all? { |x| x.is_a? Fixnum }

    array.each do |element|
      return element.class == Fixnum
    end
  end

end