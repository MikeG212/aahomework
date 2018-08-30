def sluggish_octopus(array)
  i = 0
  while i < array.length
    longest_fish == true
    j = i
    while j < array.length
      next if j == i
      longest_fish = false if array[j].length > array[i].length
      j += 1
    end
    return array[i] if longest_fish == true
    i += 1
  end

end

class Array
  def merge_sort(&prc)
    return self if self.length <= 1
    prc ||= Proc.new { |x,y| x <=> y }
    mid = self.length/2
    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)
    Array.merge(left, right, &prc)

    private
    def self.merge(left, right, &prc)
      merged_array = []
      until left.empty? || right.empty?
        case prc.call(left.first, right.first)
        when 1
          merged_array << right.shift
        when -1
          merged_array << left.shift
        when 0
          merged_array << left.shift
          merged_array << right.shift
        end
      end
      merged_array + left + right
    end
  end
end

def dominant_octopus(arr)
  prc = Proc.new { |x, y| x.length <=> y.length }
  arr.merge_sort(&prc).last
end

def clever_octopus(arr)
  longest_fish = arr.first
  arr.each do |fish|
    if fish.length > longest_fish.length
      longest_fish = fish
    end
  end

  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if direction == tile
  end
end

tiles_hash = {
  'up': 1,
  'right-up': 2,
  'right': 3,
  'right-down': 4,
  'down': 5,
  'left-down': 6,
  'left': 7,
  'left-up': 8
}

def constant_dance(direction, tiles_hash)
  tiles_hash[direction]
end
