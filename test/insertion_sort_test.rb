require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def setup
    @sorter = InsertionSort.new
  end

  def test_it_will_return_the_array_if_only_one_item
    result = @sorter.sort([1])
    assert_equal [1], result
  end

  def test_it_will_return_the_empty_array_if_array_is_empty
    result = @sorter.sort([])
    assert_equal [], result
  end

  def test_it_can_sort_two_items
    result = @sorter.sort([2, 1])
    assert_equal [1, 2], result
  end

  def test_it_can_sort_three_items
    result = @sorter.sort([3, 1, 2])
    assert_equal [1, 2, 3], result
  end

  def test_it_returns_an_already_sorted_array
    result = @sorter.sort([1, 2, 3, 4])
    assert_equal [1, 2, 3, 4], result
  end

  def test_it_can_sort_a_reverse_sorted_array
    result = @sorter.sort([55, 44, 33, 22, 11])
    assert_equal [11, 22, 33, 44, 55], result
  end

  def test_it_can_sort_multidigit_numbers
    result = @sorter.sort([143, 12, 55, 988])
    assert_equal [12, 55, 143, 988], result
  end

  def test_it_can_sort_characters
    result = @sorter.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], result
  end

  def test_it_can_sort_multichar_strings
    result = @sorter.sort(["bde", "abc", "abd"])
    assert_equal ["abc", "abd", "bde"], result
  end

  def test_it_can_sort_an_even_number_of_items
    result = @sorter.sort([4, 5, 1, 0])
    assert_equal [0, 1, 4, 5], result
  end

  def test_it_can_sort_an_odd_number_of_items
    result = @sorter.sort([4, 5, 1, 0, 3])
    assert_equal [0, 1, 3, 4, 5], result
  end

  def test_it_can_also_sort_in_place
    result = @sorter.inplace_sort([4, 1, 2, 5, 6, 7])
    assert_equal [1, 2, 4, 5, 6, 7], result
  end

  def test_swap_can_swap_two_items_in_an_array
    array = [1, 3, 2, 4]
    result = @sorter.swap(array, 2)
    assert_equal [1, 2, 3, 4], result
  end

  def test_swap_swaps_the_item_at_the_selected_position_with_the_one_previous
    array = [1, 3, 2, 4]
    result = @sorter.swap(array, 3)
    assert_equal [1, 3, 4, 2], result
  end

  def test_it_can_be_initialized_with_an_array
    example = InsertionSort.new([1, 2, 3])
    assert_equal [1, 2, 3], example.initialized_array
  end

  def test_in_place_sort_will_use_the_initialized_array_when_no_arg_given
    example = InsertionSort.new([3, 1, 2])
    result = example.inplace_sort
    assert_equal [1, 2, 3], result
  end

  def test_sort_will_also_use_the_initialized_array_when_no_arg_given
    example = InsertionSort.new([3, 1, 2])
    result = example.sort
    assert_equal [1, 2, 3], result
  end
  
end
