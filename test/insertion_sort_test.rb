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

end
