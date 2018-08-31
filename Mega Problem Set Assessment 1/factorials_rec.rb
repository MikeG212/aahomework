# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1 #1
  factorials_rec(num - 1) + [(1..num-1).to_a.reduce(:*)] #2
end

#1 base case: [1] if num == 1
#2 inductive step: recursively call function on (num - 1) and add to the end the factorial of (num - 1)
