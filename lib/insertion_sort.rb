class InsertionSort
attr_reader :sorted,
            :unsorted

  def initialize
    @unsorted = []
    @sorted = []
  end

  def sort(array)
    @unsorted = array
    insert(array[0])
  end

  def insert(value, index=0)
    active_index = index
    active_index.upto(sorted.size - 1) do |sorted_item|
      @sorted[active_index + 1] = sorted_item
      active_index += 1
    end
    @sorted[index] = value
  end

end
