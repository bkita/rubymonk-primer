class Palindrome

  def palindrome?(sentence)
    return false if sentence.size == 0
    return false if sentence.class != String

    sentence.gsub!(/\s+/, '').downcase!
    sentence == sentence.reverse ? true : false
  end

end