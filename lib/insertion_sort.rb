class InsertionSort

def sort(array)
  return array if array.nil?
  1.upto(array.size - 1) do |num|
    to_insert = array[num]
    location = num - 1
    while location >= 0 && array[location] > to_insert
      array[location + 1] = array[location]
      location -= 1
    end
    array[location + 1] = to_insert
  end
  array
end

end
