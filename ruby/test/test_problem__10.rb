require 'test/unit'
require 'lib/primes'
require 'test/log'
require 'benchmark'

class TestProblem10 < Test::Unit::TestCase

  def test_simple_case
    assert_equal(17,Primes.sum_all_below(10))
  end

  def test_find_answer
    Log.benchmark(10){Primes.sum_all_below(2000000)}
  end

end
