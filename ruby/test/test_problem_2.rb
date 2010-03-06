require 'test/unit'
require 'lib/fibonocci'

class TestProblem2 < Test::Unit::TestCase

  def test_small_set
    assert_equal(44,Fibonocci.sum_even(100))
  end

  def test_find_answer
    puts "\nproblem 2 answer is: #{Fibonocci.sum_even(4000000)}"
  end

end
