# Find the smallest and second smallest in Array

# Approach 1: With two variables and updating them as we traverse the array.
# Time Complexity = O(n), Space = O(1)

def find_smallest_2nd_smallest(arr)
  least_1 = least_2 = 1.0/0.0
  arr.each do |e|
    if e < least_1
      least_2 = least_1
      least_1 = e
    elsif e < least_2
      least_2 = e
    end
  end
  puts [least_1, least_2].inspect
end

find_smallest_2nd_smallest([1,2,3,-4,-5,10])