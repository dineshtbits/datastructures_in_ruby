# Intersection of two sorted arrays.

# Approach 1:
# Time Complexity = O(n), Space = O(1)
def intersection_of_two_sorted_arrays(arr1, arr2)
  arr1_pointer = arr2_pointer = 0
  intersection_arry = []
  while !arr1[arr1_pointer].nil? and !arr2[arr2_pointer].nil?
    if arr1[arr1_pointer] == arr2[arr2_pointer]
      intersection_arry << arr1[arr1_pointer]
      arr2_pointer = arr2_pointer + 1
      arr1_pointer = arr1_pointer + 1
    elsif arr1[arr1_pointer] > arr2[arr2_pointer]
      arr2_pointer = arr2_pointer + 1
    else
      arr1_pointer = arr1_pointer + 1
    end
  end
  puts intersection_arry.inspect
end

intersection_of_two_sorted_arrays([1,2,3,4], [3,4,5,6])
