class BubbleSort
  attr_reader :sorted,
              :previous,
              :current

  def initialize
    @sorted = []
  end

  def sort(array, end_index=array.size-1)
    return array if array.size <= 1
    bubble_sort(array, end_index)
  end

  def bubble_sort(array, end_index)
    end_index.times do |index|
      previous = array[index]
      current = array[index + 1]
      if current < previous
        array[index] = current
        array[index + 1] = previous
      end
      @sorted = array
      bubble_sort(array, end_index - 1)
    end
    return sorted
  end

end
