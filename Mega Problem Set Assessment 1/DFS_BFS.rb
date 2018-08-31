def dfs(target_value)
  return self if @value == target_value #1
  @children.each do |child| #2
    result = child.dfs(target_value) #3
    return result unless result.nil? #4
  end
  nil #5
end

def bfs(target_value)
  queue = [self] #1

 until queue.empty? #2
    current = queue.shift #3
    return current if current.value == target_value #4
    current.children.each {|child| queue << child} #5
  end
  nil #6
end

#1 base case return self if @value == target_value
#2 iterate through children
#3 memoization: result = recsurive call dfs on child
#4 return result unless it is nil
#5 if end iteration, return nil

#1 create queue that contains self
#2 until queue is empty, run this search
#3 create current and shift first element of queue into element
#4 return current if current.value == target_value (breaks everything)
#5 else iterate through all of current's children and add them to the queue
#6 if the queue is completely empty, return nil
