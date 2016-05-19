class BubbleSort
  attr_reader :sorted,
              :previous,
              :current

  def initialize
    @sorted = []
    @previous = nil
    @current = nil
  end

  def sort(array, end_index=array.size-1)
    if array.empty?
      nil
    else
      end_index.times do |index|
        @previous = array[index]
        @current = array[index + 1]
        if current < previous
          array[index] = current
          array[index + 1] = previous
        end
        @sorted = array
        sort(array, end_index - 1)
      end
      sorted
    end
  end

end
