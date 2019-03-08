##
# 递归 + 枚举
#
def string_path(arrays, string)
  if arrays.empty? || string.nil?
    return false
  end

  if string.empty?
    return true
  end

  char = string[0]
  visited_array = Array.new(arrays.size, Array.new(arrays.first.size, true))
  arrays.each do |array|
    path = 0
    row = arrays.index(array)
    if array.include?(char)
      col = array.index(char)
      if is_exist_path?(arrays, row, col, arrays.size, arrays.first.size, string, visited_array, path)
        return true
      else
        # 初始化所有清零
        visited_array = Array.new(arrays.size, Array.new(arrays.first.size, true))
        next
      end
    end
  end

  return false
end

##
# 失败：
#   问题一：visited_array 怎么保持
#   问题二：四个方向的判断怎么不互相干扰
#
# def is_exist_path?(arrays, row, col, string, visited_array)
#   char = string[0]
#   if arrays[row+1][col] && visited_array[row+1][col] && arrays[row+1][col].eql?(char)
#     visited_array[row+1][col] = false
#     return is_exist_path?(arrays, row + 1, col, string[1..-1], visited_array)
#   elsif arrays[row][col+1] && visited_array[row][col+1] && arrays[row][col+1].eql?(char)
#     return is_exist_path?(arrays, row, col + 1, string[1..-1], visited_array)
#   end
# end
def is_exist_path?(arrays, row, col, rows, cols, string, visited_array, path)
  if path = string.size
    return true
  end

  has_path = false
  if (row >= 0 && row < rows && col >= 0 && col < cols &&
      arrays[row][col] == string[path] && visited_array[row][col])
    path += 1
    visited_array[row][col] = false
  end

  has_path = is_exist_path?(arrays, row, col - 1, rows, cols, string, visited_array, path) ||
    is_exist_path?(arrays, row - 1, col, rows, cols, string, visited_array, path) ||
    is_exist_path?(arrays, row + 1, col, rows, cols, string, visited_array, path) ||
    is_exist_path?(arrays, row, col + 1, rows, cols, string, visited_array, path)

  if !has_path
    path -= 1
    visited_array[row][col] = true
  end

  return has_path
end
