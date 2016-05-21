class MergeSort

  def pair_split(array)
    if array.size == 2
      array
    else
      size = array.size
      split_point = (size / 2) - 1
      split_array = array.slice(0..split_point)
      pair_split(split_array)
    end
  end

  def first_num(pair)
    pair[0]
  end

  def second_num(pair)
    pair[1]
  end

  def compare_and_reassemble(num1, num2)
    rebuilt = []
    if num1 >= num2
      rebuilt = [num2, num1]
    else
      rebuilt = [num1, num2]
    end
  end

end
