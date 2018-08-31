# Back in the good old days, you used to be able to write a darn near
# uncrackable code by simply taking each letter of a message and incrementing it
# by a fixed number, so "abc" by 2 would look like "cde", wrapping around back
# to "a" when you pass "z".  Write a function, `caesar_cipher(str, shift)` which
# will take a message and an increment amount and outputs the encoded message.
# Assume lowercase and no punctuation. Preserve spaces.
#
# To get an array of letters "a" to "z", you may use `("a".."z").to_a`. To find
# the position of a letter in the array, you may use `Array#find_index`.

def caesar_cipher(str, shift)
  letters = ("a".."z").to_a #1

  encoded_str = "" #2
  str.each_char do |char| #3
    if char == " " #4
      encoded_str << " "
      next
    end

    old_idx = letters.find_index(char) #5
    new_idx = (old_idx + shift) % letters.count #6

    encoded_str << letters[new_idx] #7
  end

  encoded_str
end

#1 create an alphabet array
#2 create a result String
#3 iterate through each char in array
#4 create if statement to add blank spaces
#5 create old idx to store str index of char
#6 create new idx by adding shift to old idx, use modulo to get wrap around
#7 add the letter at the new idx to result String, return result string at the end of loop
