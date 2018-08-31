class LRUCache
  def initialize(max_length, cache)
    @max_length = max_length
    @cache = cache
  end

  def count
    @cache.length
    # returns number of elements currently in cache
  end

  def add(el)
    # adds element to cache according to LRU principle
    if cache.include?(el)
      cache.delete(el)
      cache.push(el)
    elsif count >= @max_length
      cache.shift
      cache.push(el)
    else
      cache.push(el)
    end

    cache
  end

  def show
    p cache
    nil
    # shows the items in the cache, with the LRU item first
  end

  # private
  # helper methods go here!

end
