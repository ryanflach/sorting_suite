class InsertionSort
attr_reader :sorted

  def sort(array)
    return array if array.size <= 1
    sorted = [array.shift]
    array.each do |item|
      times_through = sorted.size - 1
      0.upto(times_through) do |index|
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
