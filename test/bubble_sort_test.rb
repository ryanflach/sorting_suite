require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def setup
    @sorter = BubbleSort.new
  end

  def test_if_current_is_smaller_than_previous_they_swap
    result = @sorter.sort([5, 4])
    assert_equal [4, 5], result
  end

  def test_if_current_is_larger_than_previous_they_do_not_swap
    result = @sorter.sort([4, 5])
    assert_equal [4, 5], result
  end

  def test_can_sort_a_larger_array
    result = @sorter.sort([4, 2, 5, 1, 3, 6, 9, 7, 8])
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], result
  end

  def test_it_can_sort_a_reverse_sorted_array
    result = @sorter.sort([5, 4, 3, 2, 1])
    assert_equal [1, 2, 3, 4, 5], result
  end

  def test_sorting_an_empty_array_returns_the_empty_array
    result = @sorter.sort([])
    assert_equal [], result
  end

  def test_sorting_an_array_with_one_item_returns_the_item
    result = @sorter.sort([2])
    assert_equal [2], result
  end

  def test_it_can_sort_multidigit_numbers
    result = @sorter.sort([142, 999, 12, 65])
    assert_equal [12, 65, 142, 999], result
  end

  def test_it_can_also_sort_letters
    result = @sorter.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], result
  end

  def test_it_can_still_sort_if_there_are_repeating_values
    result = @sorter.sort(["a", "d", "d", "b", "c"])
    assert_equal ["a", "b", "c", "d", "d"], result
  end

  def test_it_can_sort_multichar_strings
    result = @sorter.sort(["abc", "gad", "aaa"])
    assert_equal ["aaa", "abc", "gad"], result
  end

  def test_it_can_sort_an_even_number_of_items
    result = @sorter.sort([4, 1, 5, 3])
    assert_equal [1, 3, 4, 5], result
  end

  def test_it_can_sort_an_odd_number_of_items
    result = @sorter.sort([4, 1, 5, 3, 2])
    assert_equal [1, 2, 3, 4, 5], result
  end

end
