def subsets(arr)
  return [arr] if arr.length < 1 #1

  subs = subsets(arr[0..-2]) #2
  subs.concat(subs.map{|el| el += [arr.last]}) #3
end

#1 base case: return empty array inside an empty array ([[]]) if array is empty
#2 create subs arr and set it to a recursive call of all but last element
#3 concat subs_arr with each subs_arr el + the last element in the array
