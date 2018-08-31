require 'byebug'
class Array

  def my_bsearch(target)
    return nil if array.empty? #1
    mid = self.length / 2 #2

    case self[mid] <=> target #3
    when 0
      return mid #4 if same, return mid
    when 1
      return self.dup.take(mid).my_bsearch(target) #5
    else
      search_res = self.dup.drop(mid+1).my_bsearch(target) #6
      search_res.nil? ? nil : mid + 1 + search_res #7, #8
    end
  end

end

#1 base_case: return nil if array is empty
#2 find midpoint
#3 use spaceship operator and case when to compare the midpoint to the target
#4 if midpoint == target return midpoint
#5 if midpoint is greater than target, recursively call binary search on side left of midpoint
  #6 search_res = call recursively on right of midpoint
  #7 if search res is nil return nil.
  #8 else return mid + 1 + search res
