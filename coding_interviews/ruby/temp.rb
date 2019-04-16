def kth_smallest(matrix, k)
  if matrix.nil? || matrix.empty?
    return nil
  end
  
  rows = matrix.size
  0.upto(rows - 1).each do |height|
    index = height * (rows + 1) + 1
    if index == k
      return matrix[height][height]
    elsif index > k
      if height > 0
      require "pry";binding.pry
        index_last = (height - 1) * (rows + 1)
        value = k - index_last
        array = (matrix[height - 1][height..-1] + matrix[height][0...height]).sort
        return array[value - 1]
      else
        value = index - k
        return matrix[height][value - 1]
      end
    end
  end
  
  return nil
  
end

matrix = [[1,5,9],[10,11,13],[12,13,15]]
k = 8

kth_smallest(matrix, k)
