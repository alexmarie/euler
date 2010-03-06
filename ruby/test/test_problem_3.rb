require 'test/unit'
require 'lib/factor'

class TestProblem3 < Test::Unit::TestCase

  def test_small_factor
    assert_equal(5,Factor.largest_prime(10))
  end

  def test_larger_example
    assert_equal(29,Factor.largest_prime(13195))
  end

  def test_find_answer
    puts "\nproblem 3 answer is: #{Factor.largest_prime(600851475143)}"
  end

end
