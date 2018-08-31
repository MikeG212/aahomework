class Array

  def my_all?(&prc)
    self.each { |el| return false unless prc.call(el) } #1-2
    true #3
  end

  def my_none?(&prc)
    self.each { |el| return false if prc.call(el) } #1-2
    true #3
  end

  def my_any?(&prc)
    self.each{|el| return true if prc.call(el)} #1-2
    false #3
  end
end

#1 All - iterate over each element in self
#2 return false unless prc.call(el) is true
#3 if you finish the entire iterating process without triggering return, return true

#1 None - iterate over each element in self
#2 return false if prc.call(el) is true
#3 if you finish the entire iterating process without triggering return, return true

#1 Any - iterate over each element in self
#2 return true if prc.call(el) is true
#3 if you finish the entire iterating process without triggering return, return false
