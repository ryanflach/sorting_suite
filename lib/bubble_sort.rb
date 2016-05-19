class BubbleSort
  attr_reader :sorted,
              :previous,
              :current

  def initialize
    @sorted = []
  end

  def sort(array, end_index=array.size-1)
    if array.empty?
      nil
    elsif end_index == 0
      @sorted = array
    else
      bubble_sort(array, end_index)
    end
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
  end

end
