require 'test/unit'
require 'lib/palindrome'

class TestProblem4 < Test::Unit::TestCase

  def test_int_is_palindrome
    assert(Palindrome.int_is_palindrome?(12321))
    assert(!Palindrome.int_is_palindrome?(1234))
  end

  def test_small_case
    assert_equal(121,Palindrome.largest_palindrome(11))
  end

  def test_two_digit_example
    assert_equal(9009,Palindrome.largest_palindrome(99))
  end

  def test_find_answer
    #assert_equal(Palindrome.largest_palindrome2(999),Palindrome.largest_palindrome(999))
    puts "\nproblem 4 answer is: #{Palindrome.largest_palindrome(999)}"
  end

end
    
