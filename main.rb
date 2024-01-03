def merge_sort(array)
    return array if array.length <= 1
     mid = array.length / 2
     left = array[0...mid]
     right = array[mid..-1]
  
     l_sort = merge_sort(left)
     r_sort = merge_sort(right)
  
     merge(l_sort, r_sort)
  
  end
  
  def merge(left,right)
    output = []
    l_index = 0
    r_index = 0
    while l_index < left.length && r_index < right.length
       if left[l_index] < right[r_index]
            output << left[l_index]
             l_index += 1
        else
             output << right[r_index]
             r_index += 1
       end
  end
     output.concat(left[l_index..-1])
     output.concat(right[r_index..-1])
     output
  end
  
  unsort_array = [3,8,1,19,7,34,80,54,44,6,78,100,63,98]
  sort_array = merge_sort(unsort_array)
  puts "sorted array: #{sort_array}"
  
  