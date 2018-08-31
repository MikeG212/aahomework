

# return b^n recursively. Your solution should accept negative values
# for n
def exponent(b, n)
  return 1 if n == 0 #1
  n > 0 ? b * exponent(b, n - 1) : 1.0 / b * exponent(b, n + 1) #2, 3
end

#1 base case: anything ** 0 = 1
#2 inductive step: if n is positive, multiply base by recursive call on (b, n - 1) to approach base case
#3 if n is negative divide 1.0 by base and multiply by recursive call on (b, n + 1) " "
