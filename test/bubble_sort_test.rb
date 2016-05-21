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
    @sorter.sort([4, 2, 5, 1, 3])
    assert_equal [1, 2, 3, 4, 5], @sorter.sorted
  end

  def test_it_can_sort_a_reverse_sorted_array
    @sorter.sort([5, 4, 3, 2, 1])
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

  def test_it_can_sort_multidigit_numbers
    @sorter.sort([142, 999, 12, 65])
    assert_equal [12, 65, 142, 999], @sorter.sorted
  end

  def test_it_can_also_sort_letters
    @sorter.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], @sorter.sorted
  end

  def test_it_can_still_sort_if_there_are_repeating_values
    @sorter.sort(["a", "d", "d", "b", "c"])
    assert_equal ["a", "b", "c", "d", "d"], @sorter.sorted
  end

  def test_it_can_sort_multichar_strings
    @sorter.sort(["abc", "gad", "aaa"])
    assert_equal ["aaa", "abc", "gad"], @sorter.sorted
  end

  def test_it_can_sort_an_even_number_of_items
    @sorter.sort([4, 1, 5, 3])
    assert_equal [1, 3, 4, 5], @sorter.sorted
  end

  def test_it_can_sort_an_odd_number_of_items
    @sorter.sort([4, 1, 5, 3, 2])
    assert_equal [1, 2, 3, 4, 5], @sorter.sorted
  end

end
