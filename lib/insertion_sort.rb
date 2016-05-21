class InsertionSort

def sort(array)
  return array if array.size <= 1
  insertion_sort(array)
end

def insertion_sort(array)
  return array if array.size <= 1
  1.upto(array.size - 1) do |index|
    location = index
    while location > 0 && (array[location - 1] > array[location])
      holding = array[location]
      array[location] = array[location - 1]
      array[location - 1] = holding
      location -= 1
    end
  end
  return array
end

def inplace_sort(array)
  1.upto(array.size - 1) do |index|
    to_insert = array[index]
    location = index - 1
    while location >= 0 && array[location] > to_insert
      array[location + 1] = array[location]
      location -= 1
    end
    array[location + 1] = to_insert
  end
  return array
end

end
