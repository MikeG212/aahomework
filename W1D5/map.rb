class Map
  def initialize(map)
    @map = map
  end

  def set(key, value)
    delete(key)
    @map.push([key, value])
  end

  def get(key)

  end

  def delete(key)
    @map.reject! { |k,v| k == key }
  end
end
