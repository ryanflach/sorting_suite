class MergeSort

  def sort(array)
    return array if array.size <= 1
    mid_point = array.size/2
    left = array[0...mid_point]
    right = array[mid_point..-1]

    left_items = sort(left)
    right_items = sort(right)
    return merge_sort(left_items, right_items)
  end

  def merge_sort(left_array, right_array)
    sorted = []
    left_index = 0
    right_index = 0
    while left_index < left_array.size && right_index < right_array.size
      if left_array[left_index] < right_array[right_index]
        sorted << left_array[left_index]
        left_index += 1
      else
        sorted << right_array[right_index]
        right_index += 1
      end
    end
    if left_index == left_array.size - 1
      right_index.upto(right_array.size - 1) do |index|
        sorted << right_array[index]
      end
    else
      left_index.upto(left_array.size - 1) do |index|
        sorted << left_array[index]
      end
    end
    return sorted
  end

end
