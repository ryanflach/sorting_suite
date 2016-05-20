require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def setup
    @sorter = InsertionSort.new
  end

  def test_can_sort_only_one_item
    assert_equal [1], @sorter.sort([1])
  end

  def test_it_can_sort_two_items
    assert_equal [1, 5], @sorter.sort([5,1])
  end

  def test_it_does_nothing_to_an_already_sorted_array
    assert_equal [1, 2, 3], @sorter.sort([1, 2, 3])
  end

  def test_it_can_sort_an_array
    assert_equal [0, 1, 5], @sorter.sort([1, 0, 5])
  end

  def test_it_can_sort_a_reverse_sorted_array
    assert_equal [3, 4, 5], @sorter.sort([5, 4, 3])
  end

end
