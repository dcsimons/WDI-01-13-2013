# file path:  DSimons/WDI/01 13 2013/spec/sorted_array.rb

class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
    input_arr.each do |element|
      add(element)
    end
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    # raise NotImplementedError.new("You need to implement the add method!")
    @internal_arr.insert(first_larger_index(new_ele), new_ele)

  end

  def size
    @internal_arr.size
  end

  def [](index)
    # raise NotImplementedError.new("You need to implement the [] method!")
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size-1)
    # raise NotImplementedError.new("You need to implement the first_larger_index method!")

    if @internal_arr == []
      return 0
    elsif target >= @internal_arr[end_ind]
      return end_ind+1
    elsif target <= @internal_arr[start_ind]
      return 0
    else
      mid_index = (end_ind + start_ind)/2
      mid_element = @internal_arr[mid_index]

      if mid_element == target
        return mid_index
      elsif mid_element > target && target >= @internal_arr[mid_index-1]
        return mid_index
      elsif mid_element < target && target <= @internal_arr[mid_index+1]
        return mid_index+1
      elsif mid_element > target
        first_larger_index(target,start_ind, mid_index)
      elsif mid_element < target
        first_larger_index(target, mid_index+1, end_ind)
      end
    end

  end

  def index(target)
    # raise NotImplementedError.new("You need to implement the index method!")
    @internal_arr.index(target)

  end
end