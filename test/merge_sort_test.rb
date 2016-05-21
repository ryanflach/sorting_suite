require 'minitest/autorun'
require 'minitest/pride'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test
  def setup
    @merge = MergeSort.new
  end

  def test_it_can_split_an_array_into_a_pair
    result = @merge.pair_split([0, 1, 2, 3])
    assert_equal [0, 1], result
  end

  def test_it_can_return_the_left_side_of_an_array
    result = @merge.left_side([0, 1, 2, 3])
    assert_equal [0, 1], result
  end

  def test_it_can_return_the_right_side_of_an_array
    result = @merge.right_side([0, 1, 2, 3])
    assert_equal [2, 3], result
  end


  def test_it_can_return_the_first_number_in_a_split_pair
    first_split = @merge.pair_split([0, 1, 2, 3])
    result = @merge.first_num(first_split)
    assert_equal 0, result
  end

  def test_it_can_return_the_second_number_in_a_split_pair
    first_split = @merge.pair_split([0, 1, 2, 3])
    result = @merge.second_num(first_split)
    assert_equal 1, result
  end

  def test_it_can_compare_and_return_an_array_of_a_split_pair
    first_split = @merge.pair_split([0, 1, 2, 3])
    num1 = @merge.first_num(first_split)
    num2 = @merge.second_num(first_split)
    result = @merge.compare_and_reassemble(num1, num2)
    assert_equal [0, 1], result
  end

  def test_it_will_return_an_array_of_size_1
    result = @merge.merge_sort([1])
    assert_equal [1], result
  end


end
