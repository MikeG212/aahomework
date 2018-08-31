# Write a recursive method that returns the sum of all elements in an array
def rec_sum(nums)
  return nums[0] if nums.length == 1 #1
  nums.last + rec_sum(nums[0...-1]) #2
end

#1 base case: return the first element array if it is a 1 element array
#2 add last number of array with calling rec_sum(on the array, all but last num)
