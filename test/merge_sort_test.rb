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

  def test_it_can_sort_two_items
    result = @merge.sort([4, 1])
    assert_equal [1, 4], result
  end

  def test_it_can_sort_a_larger_array
    result = @merge.sort([5, 2, 6, 4, 1, 0, 9])
    assert_equal [0, 1, 2, 4, 5, 6, 9], result
  end


end
