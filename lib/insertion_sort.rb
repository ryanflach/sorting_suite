class InsertionSort
attr_reader :sorted,
            :unsorted

  def initialize
    @unsorted = []
    @sorted = []
  end

  def sort(array)
    @unsorted = array
  end

end
