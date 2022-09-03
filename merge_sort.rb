def merge_sort(array)
  if array.length < 2
    array
  else
    #split the array in half
    left_side = array.slice(0, array.length/2)
    right_side = array.slice(array.length/2, array.length - array.length/2) 
    left_side = merge_sort(left_side)
    right_side = merge_sort(right_side)
    #sort here for the length of the array first element smaller than other half first element
    sorted_arr = []
    for i in 1..array.length
      if left_side.length == 0
        sorted_arr << right_side.shift
      elsif right_side.length == 0
        sorted_arr << left_side.shift
      elsif left_side.first <= right_side.first
        sorted_arr << left_side.shift
      elsif right_side.first <= left_side.first
        sorted_arr << right_side.shift
      end
    end
    sorted_arr
  end
end

p merge_sort [2, 1, 89 ,2, 3, 66, 7,4,2,1,6,4]