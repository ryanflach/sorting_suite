require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def setup
    @sorter = InsertionSort.new
  end

  def test_sorted_array_is_empty_when_initialized
    assert @sorter.sorted.empty?
  end

  def test_unsorted_array_is_empty_when_initialized
    assert @sorter.unsorted.empty?
  end

  def test_it_assigns_a_passed_in_array_to_unsorted_when_sorting
    @sorter.sort([1, 0, 4, 3, 2])
    assert_equal [1, 0, 4, 3, 2], @sorter.unsorted
  end

  def test_sort_adds_the_first_value_of_the_array_to_sorted
    @sorter.sort([1])
    assert_equal [1], @sorter.sorted
  end

  

end
