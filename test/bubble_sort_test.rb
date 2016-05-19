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

  def test_if_current_is_larger_than_previous_they_do_not_swap
    @sorter.sort([4, 5])
    assert_equal [4, 5], @sorter.sorted
  end

  def test_can_sort_a_larger_array
    @sorter.sort([5, 3, 4, 2, 1])
    assert_equal [1, 2, 3, 4, 5], @sorter.sorted
  end

  def test_sorting_an_empty_array_returns_nil
    assert_equal nil, @sorter.sort([])
  end

  def test_sorting_an_array_with_one_item_returns_the_item
    assert_equal [2], @sorter.sort([2])
  end

  def test_sorting_an_array_with_one_item_sets_sorted_to_the_array
    @sorter.sort([5])
    assert_equal [5], @sorter.sorted
  end


end
