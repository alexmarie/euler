require 'test/unit'
require 'test/log'
require 'lib/grid'

class TestProblem11 < Test::Unit::TestCase

  def test_read_grid
    g = Grid.new('test/grid.txt')
    assert_equal(99,g.value(1,2))
  end

  def test_horizontal_multiple
    g = Grid.new('test/small_grid.txt')
    assert_equal(237699,g.max_h_mult(3))
  end

  def test_vertical_multiple
    g = Grid.new('test/small_grid.txt')
    assert_equal(69696,g.max_v_mult(3))
  end

  def test_diagonal_multiple
    g = Grid.new('test/small_grid.txt')
    assert_equal(2303,g.max_d_right_mult(2))
  end

  def test_find_answer
    Log.benchmark(11) do
      g = Grid.new('test/grid.txt')
      g.max_multiple(4)
    end
  end

end
