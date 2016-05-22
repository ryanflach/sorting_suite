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
    if left_index == left_array.size
      add_remaining(sorted, right_array, right_index)
    else
      add_remaining(sorted, left_array, left_index)
    end
    return sorted
  end

  def add_remaining(final_array, items_to_add, starting_index)
    starting_index.upto(items_to_add.size - 1) do |index|
      final_array << items_to_add[index]
    end
    return final_array
  end

end
