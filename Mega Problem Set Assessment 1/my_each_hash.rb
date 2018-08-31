class Hash

  # Write a version of my each that calls a proc on each key, value pair
  def my_each(&prc)
    keys = self.keys #1
    keys.length.times do |idx| #2
      key = keys[idx] #3
      prc.call(key, self[key]) #4
    end
  end
end

#1 create keys Array
#2 loop through keys array with times and idx
#3 create variable key for key[idx]
#4 prc.call on the key and the value (key[idx])
