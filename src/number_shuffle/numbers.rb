class Numbers

  def number_shuffle(number)
    return 0 unless number.class == Fixnum
    arr = number.to_s.split('').permutation.to_a.sort
    arr.map {|item| item.join('').to_i}
  end
end
