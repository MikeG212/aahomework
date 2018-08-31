class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)
    prc ||= Proc.new { |x,y| x <=> y} #1
    return self if self.length < 2 #2
    mid = self.length / 2 #3
    left = self.take(mid).merge_sort(&prc) #4
    right = self.drop(mid).merge_sort(&prc)
    Array.merge(left, right, &prc) #5

  end

  private
  def self.merge(left, right, &prc)
    res_arr = [] #6
    until left.empty? || right.empty? #7
      case prc.call(left.first, right.first)
      when -1
        res_arr << left.shift
      when 1
        res_arr << right.shift
      when 0
        res_arr << left.shift
        res_arr << right.shift
      end
    end

    res_arr + left + right #8
  end
end

#What is merge sort? (conceptually)

#1 lazy assign default sort proc
#2 base case: return self if self.length < 2
#3 find midpoint to split self in half
#4 recursively call merge_sort on left and right halves of self, feed it &prc
#5 call Array.merge class method feeding it left, right, &prc

#6 create res_arr
#7 until either left or right array is empty, prc.call on first el of each array and shove the "less than one" into res_arr
#8 once one of them is empty, add res_arr with both of them
