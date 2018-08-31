class Array
  def bubble_sort!(&prc)
    prc ||= Proc.new { |x,y| x <=> y } #1
    out_of_order = true #2
    while out_of_order #3
      out_of_order = false #4
      self.each_index do |i| #5
        next if i + 1 == self.length #6
        left = self[i] #7
        right = self[i + 1]
        if prc.call(self[i], self[i + 1]) == 1 #8
          self[i] = right
          self[i + 1] = left
          out_of_order = true
        end
      end
    end
    self #9
  end

  def bubble_sort(&prc)
    self.dup.bubble_sort!(&prc) #10
  end
end

#1 lazy assign proc to default sorting proc
#2 create out of order boolean set to true
#3 create while loop that runs whie it is out of order
#4 set out_of_order to false
#5 iterate through each_index in array with i
#6 next if i is the index for the last element of array
#7 create dummy variables for left and right
#8 call prc on left and right and if the spaceship operator == 1, switch them, and set out_of_order to true
#9 return self once you end while loop

#10 dup self and call bubble sort on it
