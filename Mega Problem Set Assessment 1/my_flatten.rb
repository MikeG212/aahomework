# Takes a multi-dimentional array and returns a single array of all the elements
# [1,[2,3], [4,[5]]].my_controlled_flatten(1) => [1,2,3,4,5]
# Write a version of flatten that only flattens n levels of an array.
# E.g. If you have an array with 3 levels of nested arrays, and run
# my_flatten(1), you should return an array with 2 levels of nested
# arrays
#
# [1,[2,3], [4,[5]]].my_controlled_flatten(1) => [1,2,3,4,[5]]

class Array

  def my_flatten
    flattened = [] #1
    self.my_each do |el| #2
      el.is_a?(Array) ? flattened += el.my_flatten : flattened << el #3,4
    end
    flattened #5
  end

  def my_controlled_flatten(n)
    return self if n < 1 #1
    result = [] #2

    each do |el| #3
      if el.is_a?(Array)
        result += el.my_controlled_flatten(n-1)
      else
        result << el #4
      end
    end

    result #5
  end

end

#1 create res_arr
#2 iterate over each in self
#3 check if each el is an array, if yes, += recursive call of my flatten on el
#4 else add el to res_arr
#5 return res_arr

#1 base case: return self if n < 1
#2 create res_arr
#3 iterate over each el in self and check if el is an array, if yes, recursively call mcf on el with n-1
#4 else shove el into res_arr
#5 return res_arr
