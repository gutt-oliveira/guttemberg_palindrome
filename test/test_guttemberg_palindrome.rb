# frozen_string_literal: true

require "test_helper"

class TestGuttembergPalindrome < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end
  
  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
