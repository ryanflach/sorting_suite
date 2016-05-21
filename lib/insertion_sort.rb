class InsertionSort

def sort(array)
  return array if array.nil?
  1.upto(array.size - 1) do |index|
    to_insert = array[index]
    location = index - 1
    while location >= 0 && array[location] > to_insert
      array[location + 1] = array[location]
      location -= 1
    end
    array[location + 1] = to_insert
  end
  array
end

def swapping_sort(array)
  return array if array.nil?
  1.upto(array.size - 1) do |index|
    location = index
    while location > 0 && (array[location - 1] > array[location])
      holding = array[location]
      array[location] = array[location - 1]
      array[location - 1] = holding
      location -= 1
    end
  end
  array
end

end
