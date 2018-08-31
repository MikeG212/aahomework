# Write a method that returns the factors of a number in ascending order.

def factors(num)
  (1..num).to_a.select { |factor| num % factor == 0 } #1
end

#1 create range of 1 to num(exclusive) and convert to array
#2 seelct out all numbers that are factors
