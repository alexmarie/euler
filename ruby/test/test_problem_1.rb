require 'test/unit'
require 'lib/multiple_summer'

class TestProblem1 < Test::Unit::TestCase

  def test_multiples
    assert_equal(23, MultipleSummer.sum(10,[3,5]))
  end

  def test_including_number_divisible_by_both_multiples
    assert_equal(32,MultipleSummer.sum(10,[2,3]))
  end

  def test_find_answer
    puts "problem 1 answer is: #{MultipleSummer.sum(1000,[3,5])}"
  end

end
