class Array

  def my_each(&prc)
    self.length.times do |time| #1
      prc.call(self[time]) #2
    end
  end

  def my_each_with_index(&prc)
    self.length.times do |time|
      prc.call(self[time], time) #3
    end
  end

end

#1 run a loop that loops once/ element in the array (storing index)
#2 call prc on each element (self[index])
#3 if you want an index, call prc on each element and the index
