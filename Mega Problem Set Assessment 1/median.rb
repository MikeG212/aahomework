# Write a method that returns the median of elements in an array
# If the length is even, return the average of the middle two elements
class Array
  def median
    sorted_arr = self.sort #1
    self.length % 2 == 0 ? (sorted_arr[sorted_arr.length / 2] + sorted_arr[sorted_arr.length / 2 - 1]) / 2.0  : sorted_arr[sorted_arr.length / 2] #2,3
  end
end

#1 sort arr
#2 return middle element if odd length
#3 return average of two middle elements if even length
