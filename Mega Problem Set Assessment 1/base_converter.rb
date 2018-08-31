# Write a recursive method that takes in a base 10 number n and
# converts it to a base b number. Return the new number as a string
#
# E.g. base_converter(5, 2) == "101"
# base_converter(31, 16) == "1f"

def base_converter(num, b)
  return "" if num == 0 #1

  digits = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f) #2
  base_converter(num/b, b) + digits[num % b] #3
end

#1 take care of base case when num == 0
#2 create array of 0-9, a-f
#3 inductive step: call base_converter(num/b,b) and add the element of the array that corresponds with the num % b
