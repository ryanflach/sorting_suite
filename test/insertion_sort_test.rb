require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def setup
    @sorter = InsertionSort.new
  end

  def test_it_will_return_the_array_if_only_one_item
    assert_equal [1], @sorter.sort([1])
  end

  def test_it_will_return_nil_if_the_array_is_nil
    assert_equal nil, @sorter.sort(nil)
  end

  def test_it_can_sort_two_items
    assert_equal [1, 2], @sorter.sort([2, 1])
  end

  def test_it_can_sort_three_items
    assert_equal [1, 2, 3], @sorter.sort([3, 1, 2])
  end

  def test_it_returns_an_already_sorted_array
    assert_equal [1, 2, 3, 4], @sorter.sort([1, 2, 3, 4])
  end

  def test_it_can_sort_a_reverse_sorted_array
    assert_equal [11, 22, 33, 44, 55], @sorter.sort([55, 44, 33, 22, 11])
  end

  def test_it_can_sort_characters
    assert_equal ["a", "b", "c", "d"], @sorter.sort(["d", "b", "a", "c"])
  end

  def test_it_can_sort_multichar_strings
    assert_equal ["abc", "abd", "bde"], @sorter.sort(["bde", "abc", "abd"])
  end

end
