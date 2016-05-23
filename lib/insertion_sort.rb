  class InsertionSort
    attr_reader :initialized_array

    def initialize(array=nil)
      @initialized_array = array
    end

    def sort(array=initialized_array)
      return array if array.size <= 1
      insertion_sort(array)
    end

    def insertion_sort(array)
      1.upto(array.size - 1) do |index|
        location = index
        while location > 0 && array[location - 1] > array[location]
          swap(array, location)
          location -= 1
        end
      end
      return array
    end

    def inplace_sort(array=initialized_array)
      1.upto(array.size - 1) do |index|
        location = index - 1
        to_insert = array[index]
        insert(array, location, to_insert)
      end
      return array
    end

    def swap(array, location)
      to_swap = array[location]
      array[location] = array[location - 1]
      array[location - 1] = to_swap
      return array
    end

    def insert(array, location, to_insert)
      while location >= 0 && array[location] > to_insert
        array[location + 1] = array[location]
        location -= 1
      end
      array[location + 1] = to_insert
    end

  end
