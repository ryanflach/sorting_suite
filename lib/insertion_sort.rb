class InsertionSort
attr_reader :sorted

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

# array = [3, 1, 2]
# 1..2
# to_insert == 1
# location == 0
# 3 > 1
# [here , 3]
# location == -1
# [1, 3, 2]
# ----
# to_insert == 2
# location == 1
# 3 > 2
# [ , , 3]
# location == 0
# [1, 2, 3]

end
