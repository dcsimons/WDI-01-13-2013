# file path: DSimons/WDI/01 13 2013/spec/bsearch.rb

def binary_search(array, target, start_index=0, end_index = array.length)
	if start_index >= end_index
		return nil
	else
		mid_index = (end_index + start_index)/2
		mid_element = array[mid_index]

		if mid_element == target
			mid_index
		elsif mid_element > target
			binary_search(array, target, start_index, mid_index)
		elsif mid_element < target
			binary_search(array, target, mid_index+1, end_index)
		end
	end

end