require 'test/unit'
require 'lib/multiple_finder'

class TestProblem8 < Test::Unit::TestCase

  def test_simple_string()
    assert_equal(12,MultipleFinder.greatest(3,[1,2,3,2,1]))
  end

  def test_find_answer
    puts "\nproblem 8 answer is: #{MultipleFinder.greatest_from_file(5,"test/longnum.txt")}"
  end

end
