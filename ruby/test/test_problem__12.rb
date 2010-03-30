require 'test/unit'
require 'test/log'
require 'lib/triangle'

class TestProblem12 < Test::Unit::TestCase

  def test_simple_case
    assert_equal(6,Triangle.with_divisors(4))
  end

  def test_find_answer
    Log.benchmark(12) {Triangle.with_divisors(501)}
  end

end
