def permutations(array)
  return [array] if array.length <= 1
  first = array.shift
  perms = permutations(array)
  total_permutations = []

  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permutations << perm[0 ... i] + [first] + perm[i .. -1]
    end
  end
  total_permutations.sort
end

#1 base case: return [array] if array.length <= 1
#2 shift off first element of array, store it as first
#3 store recursive call on array as perms
#4 create result_arr
#5 iterate through perms with an each
  #6 nested loop: iterate through (0..perm.length) with an each
  #7 insert first at each possible index (perm[0 ... 1] + first + perm[i .. -1]) shovel into total permutations
#8 return sorted total permutations
