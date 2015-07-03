require 'minitest/autorun'
require '../src/palindrome/palindrome'

class PalindromeTest < Minitest::Test

  def test_palindrome_sentence_returns_true
    pal = make_palindrome
    assert_equal true, pal.palindrome?('Race fast safe car')
  end

  def test_other_palindrome_sentence_returns_true
    pal = make_palindrome
    assert_equal true, pal.palindrome?('Live not on Evil')
  end

  def test_non_palindrome_sentence_returns_false
    pal = make_palindrome
    assert_equal false, pal.palindrome?('Yreka Bakey')
  end

  def test_empty_sentence_returns_false
    pal = make_palindrome
    assert_equal false, pal.palindrome?('')
  end

  def test_non_string_sentence_returns_false
    pal = make_palindrome
    assert_equal false, pal.palindrome?(12321)
  end

  private
  def make_palindrome
    Palindrome.new
  end

end