require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def setup
    @sorter = BubbleSort.new
  end

  def test_if_current_is_smaller_than_previous_they_swap
    @sorter.sort([5, 4])
    assert_equal [4, 5], @sorter.sorted
  end

  def test_can_sort_a_larger_array
    @sorter.sort([5, 3, 4, 2, 1])
    assert_equal [1, 2, 3, 4, 5], @sorter.sorted
  end

  def test_sorting_an_empty_array_returns_nil
    assert_equal nil, @sorter.sort([])
  end


end
