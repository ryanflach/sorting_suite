require './lib/bubble_sort'
require './lib/insertion_sort'
require './lib/merge_sort'

class Benchmark
attr_reader :set_array

  def initialize
    @set_array = []
  end

  def time(sorting_method, array=set_array)
    if array.empty?
      "Nothing to sort"
    elsif set_array.empty?
      @set_array = array
      time(sorting_method)
    else
      time_taken = run_test_and_time(sorting_method, array)
      text_format = sorting_method.to_s.split('::').last
      "#{text_format} took #{time_taken} seconds"
    end
  end

  def fastest(array)
    bubble_time = run_test_and_time(BubbleSort, array)
    insertion_time = run_test_and_time(InsertionSort, array)
    merge_time = run_test_and_time(MergeSort, array)
    quickest = [bubble_time, insertion_time, merge_time].sort.first
    if quickest == bubble_time
      "BubbleSort is the fastest"
    elsif quickest == insertion_time
      "InsertionSort is the fastest"
    else
      "MergeSort is the fastest"
    end
  end

  def slowest(array)
    bubble_time = run_test_and_time(BubbleSort, array)
    insertion_time = run_test_and_time(InsertionSort, array)
    merge_time = run_test_and_time(MergeSort, array)
    slowest = [bubble_time, insertion_time, merge_time].sort.last
    if slowest == bubble_time
      "BubbleSort is the slowest"
    elsif slowest == insertion_time
      "InsertionSort is the slowest"
    else
      "MergeSort is the slowest"
    end
  end

  def run_test_and_time(sorting_method, array)
    starting = Time.now
    sorting_method.new.sort(array)
    ending = Time.now
    return ((ending - starting).to_f % 60 * 1000).round(6)
  end

end
