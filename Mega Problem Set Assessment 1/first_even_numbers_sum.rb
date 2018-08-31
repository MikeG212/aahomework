# return the sum of the first n even numbers recursively. Assume n > 0
def first_even_numbers_sum(n)
  return 2 if n == 1 #1
  2 * n + first_even_numbers_sum(n - 1) #2
end

#1 base case: return 2 if n == 1
#2 inductive step: 2 * n + sum of all previous even numbers(n-1)
