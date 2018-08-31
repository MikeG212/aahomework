def subsets(arr)
  return [[]] if arr.length < 1
  subs = arr[0..-2]
  subs.concat(subs.map { |el| el += arr.last } )
end
