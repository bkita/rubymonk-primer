class Kaprekar

  def kaprekar?(k)
    sqr = k**2
    num_arr = sqr.to_s.split('')
    half = num_arr.size / 2

    first = ''
    second = ''

    (0..half-1).each do |at_index|
      first << num_arr[at_index].to_s
    end

    (half..num_arr.size-1).each do |at_index|
      second << num_arr[at_index].to_s
    end

    k == first.to_i + second.to_i
  end

end

