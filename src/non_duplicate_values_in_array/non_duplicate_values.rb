class NonDuplicateValues

  def non_duplicated_values(values)
    # RM solution
    # values.find_all { |x| values.count(x) == 1 }

    values_hash = Hash.new 0
    unique_values = []

    values.each do |value|
      values_hash[value] += 1
    end

    values_hash.each do |key, value|
      unique_values << key if value == 1
    end

    unique_values
  end

end
