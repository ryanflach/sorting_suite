class MergeSort

  def merge_sort(array)
    if array.size <= 1
      array
    end

    # Need to split and handle this recursively within merge_sort
    # mid_point = array.size / 2
    # left = array.slice(0...mid_point)
    # right = array.slice(mid_point..-1)
  end

  def pair_split(array)
    if array.size == 2
      array
    else
      split_array = array.slice(0..splitting_point(array))
      pair_split(split_array)
    end
  end

  def splitting_point(array)
    size = array.size
    split_point = (size / 2) - 1
  end

  def left_side(array)
    array.slice(0..splitting_point(array))
  end

  def right_side(array)
    array.slice(splitting_point(array) + 1..-1)
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
