# Find the largest and second largest in Array

# Approach 1: With two variables and updating them as we traverse the array.
# Time Complexity = O(n), Space = O(1)

def find_largest_2nd_largest(arr)
  max_1 = max_2 = 0
  arr.each do |e|
    if e > max_1
      max_2 = max_1
      max_1 = e
    elsif e < max_2
      max_2 = e
    end
  end
  puts [max_1, max_2].inspect
end

find_largest_2nd_largest([-1,-2,-3,-4,-5,-10])