require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def setup
    @merge = MergeSort.new
  end

  def test_it_returns_an_array_of_one_item
    result = @merge.sort([1])
    assert_equal [1], result
  end

  def test_it_returns_an_empty_array_if_given_an_empty_array
    result = @merge.sort([])
    assert_equal [], result
  end

  def test_it_can_sort_two_items
    result = @merge.sort([4, 1])
    assert_equal [1, 4], result
  end

  def test_it_can_sort_an_odd_number_of_items
    result = @merge.sort([0, 4, 3, 1, 2])
    assert_equal [0, 1, 2, 3, 4], result
  end

  def test_it_can_sort_a_larger_array
    result = @merge.sort([5, 2, 6, 4, 1, 0, 9])
    assert_equal [0, 1, 2, 4, 5, 6, 9], result
  end

  def test_it_can_sort_characters
    result = @merge.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], result
  end

  def test_it_will_return_an_already_sorted_array
    result = @merge.sort([1, 2, 3, 4, 5])
    assert_equal [1, 2, 3, 4, 5], result
  end

  def test_it_can_sort_a_reverse_sorted_array
    result = @merge.sort([5, 4, 3, 2, 1])
    assert_equal [1, 2, 3, 4, 5], result
  end

  def test_it_can_sort_multichar_strings
    result = @merge.sort(["bde", "abc", "abd", "aac"])
    assert_equal ["aac", "abc", "abd", "bde"], result
  end

  def test_it_can_sort_multidigit_numbers
    result = @merge.sort([13, 455, 06, 41])
    assert_equal [06, 13, 41, 455], result
  end

end
