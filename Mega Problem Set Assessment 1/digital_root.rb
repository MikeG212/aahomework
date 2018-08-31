# Write a method, `digital_root(num)`. It should Sum the digits of a positive
# integer. If it is greater than 10, sum the digits of the resulting number.
# Keep repeating until there is only one digit in the result, called the
# "digital root". **Do not use string conversion within your method.**
#
# You may wish to use a helper function, `digital_root_step(num)` which performs
# one step of the process.

def digital_root(num)
  dup = num
  until dup < 10 #4
    dup = get_digits(dup).reduce(:+) #5
  end
  dup
end

def get_digits(num) #1
  digits = [] #2
  dup = num
  until dup == 0 #3
    digits.unshift dup % 10
    dup /= 10
  end
  digits
end

#1 create helper method get digits with returns an array of the digits
#2 create result array
#3 until num is 0, add to result array each digit (num % 10) and reassign num to num/10
#4 until the sum of digits is a single digit, use the get_digits method to return the array and sum it up with reduce function
