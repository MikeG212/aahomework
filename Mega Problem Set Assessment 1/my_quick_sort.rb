class Array

  def my_quick_sort(&prc)
    prc ||= Proc.new {|a, b| a <=> b} #1
    return self if size < 2 #2

    pivot = first #3
    left = self[1..-1].select{|el| prc.call(el, pivot) == -1} #4
    right = self[1..-1].select{|el| prc.call(el, pivot) != -1} #5

    left.my_quick_sort(&prc) + [pivot] + right.my_quick_sort(&prc) #6
  end

end

#1 lazy assign proc to default search process
#2 base case: return self if size == 1 or 0
#3 create and assign pivot (arbitrary, let's use self's first element)
#4 left is assigned to select elements of self (excluding the actual pivot) that are "less than" pivot (prc.call(el, pivot))
#5 right is assigned to select "" "greater than pivot prc.call(el,pivot)
#6 recursively call my_quick_sort on left + [pivot] + recursively call my quick sort or right
