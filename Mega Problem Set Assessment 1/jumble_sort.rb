# Jumble sort takes a string and an alphabet. It returns a copy of the string
# with the letters re-ordered according to their positions in the alphabet. If
# no alphabet is passed in, it defaults to normal alphabetical order (a-z).

# Example:
# jumble_sort("hello") => "ehllo"
# jumble_sort("hello", ['o', 'l', 'h', 'e']) => 'ollhe'

def jumble_sort(str, alphabet = nil)
  alphabet ||= ('a'..'z').to_a #1

  sorted_chars = str.chars.sort do |chr1, chr2| #2
    alphabet.index(chr1) <=> alphabet.index(chr2) #3
  end

  sorted_chars.join #4
end

#1 lazy assign alphabet to a standard alphabet array if no value is passed to it
#2 created sorted chars array and call sort on the chars |char1, char2|
#3 use spaceship operator to compare alphabet arrays index of the two characters (if 1 switch, if -1 or 0 keep the same)
#4 join chars into string and return
