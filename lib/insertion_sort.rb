class InsertionSort
attr_reader :sorted

  def sort(array)
    return array if array.size <= 1
    sorted = [array.shift]
    insertion_sorting(array, sorted)
  end

  def insertion_sorting(unsorted, sorted)
    unsorted.each do |item|
      last_sorted_index = sorted.size - 1
      0.upto(last_sorted_index) do |index|
        if item < sorted[index] && index == 0
          sorted.unshift(item)
          break
        elsif item < sorted[index]
          holding = sorted[index..-1]
          sorted << item
          sorted << holding
          break
        else
          sorted << item
          break
        end
      end
    end
    sorted
  end

end
