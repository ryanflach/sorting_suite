require 'minitest/autorun'
require 'minitest/pride'
require './lib/benchmark'


class BenchmarkTest < Minitest::Test
  def setup
    @benchmark = Benchmark.new
  end

  def test_it_can_output_a_string_of_time_taken_for_bubble_sort
    result = @benchmark.time(BubbleSort, [1, 4, 2, 4])
    assert_instance_of String, result
  end

  def test_it_can_output_a_string_of_time_taken_for_insertion_sort
    result = @benchmark.time(InsertionSort, [1, 4, 2, 4])
    assert_instance_of String, result
  end

  def test_it_can_output_a_string_of_time_taken_for_merge_sort
    result = @benchmark.time(MergeSort, [1, 4, 2, 4])
    assert_instance_of String, result
  end

  def test_it_returns_a_float_when_running_test_and_time
    result = @benchmark.run_test_and_time(BubbleSort, [1, 2, 4])
    assert_instance_of Float, result
  end

  def test_it_returns_a_string_when_detecting_fastest_method
    result = @benchmark.fastest([1, 2, 3, 4, 5])
    assert_instance_of String, result
  end

  def test_it_returns_a_string_when_detecting_slowest_method
    result = @benchmark.slowest([1, 2, 3, 4, 5])
    assert_instance_of String, result
  end

end
