# Write a recursive function that returns the prime factorization of
# a given number. Assume num > 1
#
# prime_factorization(12) => [2,2,3]
def prime_factorization(num)
  return [num] if is_prime?(num) #1
  (2...num).to_a.each do |factor| #2
    return [factor] + prime_factorization(num / factor) if num % factor == 0
  end
end

def is_prime?(num)
  return false if num < 2 #1
  (2...num).to_a.none? { |factor| num % factor == 0}
end

#1 create is prime method

#1 base case: return num if num is prime
#2 iterate through range 2 to num (exclusive), call them each a factor
#3 if the factor goes into num evenly, add the [factor] to a recursive call of prime factorization on (num / factor)
