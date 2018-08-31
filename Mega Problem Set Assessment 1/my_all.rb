class Array

  def my_all?(&prc)
    self.each { |el| return false unless prc.call(el) } #1-2
    true #3
  end

  def my_none?(&prc)
    self.each { |el| return true unless prc.call(el) } #1-2
    false #3
  end
end

#1 iterate over each element in self
#2 return false unless prc.call(el)
#3 if you finish the entire iterating process without triggering return, return true

#1 iterate over each element in self
#2 return true unless prc.call(el)
#3 if you finish the entire iterating process without triggering return, return false
