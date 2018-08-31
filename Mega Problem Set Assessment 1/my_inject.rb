class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(accumulator = nil)
    accumulator ||= self.shift #1
    self.each do |el| #2
      accumulator = yield (accumulator, el) #3
    end

    accumulator #4
  end
end

#1 lazy assign accumulator to self.shift (1st el)
#2 iterate through self
#3 reassign accumulator to the result of yield(acc, el)
#4 return accumulator
