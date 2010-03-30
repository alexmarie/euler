require 'test/unit'
require 'lib/pythagorean_triplet'

class TestProblem9 < Test::Unit::TestCase

  def test_simple_case
    assert_equal(60,PythagoreanTriplet.find_multiple(12))
  end

  def test_find_answer
   puts "\nproblem 9 answer is: #{PythagoreanTriplet.find_multiple(1000)}"
  end 

end

