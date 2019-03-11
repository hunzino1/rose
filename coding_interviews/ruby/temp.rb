def super_egg_drop(k, n)
  if n <= 0
    return 0
  end

  total_times = 0
  egg_drop_floor(k, 0, n, total_times)
end

def egg_drop_floor(k, min, max, total_times)
  total_times += 1
  mid = min + (max - min) >> 1

  while max >= min do
    if mid == k
      return total_times
    elsif mid > k
      max = mid
      return egg_drop_floor(k, min, max, total_times)
    else
      min = mid
      return egg_drop_floor(k, min, max, total_times)
    end
  end

  return 0
end
