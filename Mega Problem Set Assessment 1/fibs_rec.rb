def fibs_rec(n)
  return [0, 1].take(n) if n <= 2 #1
  fibs = fibs_rec(n - 1)
  fibs << fibs[-2] + fibs[-1]
end

#1 base case return [0,1]take(n) if n <= 2
#2 inductive step: st fibs_arr = to recursive call of fibs_rec(n - 1)
#3 shovel into fibs the sum of the last two elements
