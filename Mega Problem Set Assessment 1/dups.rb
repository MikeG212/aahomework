class Array

  # Write an Array#dups method that will return a hash containing the indices of all
  # duplicate elements. The keys are the duplicate elements; the values are
  # arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    hash_indices = Hash.new { |h,k| h[k] = [] } #1
    self.each_with_index do |val, idx| #2
      hash_indices[val] << idx
    end
    hash_indices.select { |_, v| v.length > 1 } #3
  end
end

#1 Create a new hash to store the indices of values.  Set the default of each key to be an empty array using a block
#2 Iterate through the array and shovel the indices of each value into the appropriate key array
#3 iterate through hash, selecting only keys that have an array of length more than 1
