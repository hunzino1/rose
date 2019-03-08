def sum_robot_can_reach(arrays, k)
  if arrays.nil? || arrays.empty?
    return 0
  end

  rows = arrays.size
  cols = arrays.first.size
  has_visited = Array.new(rows, Array.new(cols, true))

  return sum_reachs(arrays, 0, 0, rows, cols, has_visited, reach_num)
end

def sum_reachs(arrays, row, col, rows, cols, has_visited, reach_num)
  reach_num = 0
  if row >= 0 && row < rows && col >= 0 && col < cols &&
      less_than_k?(col, row, k) && has_visited[row][col]
    reach_num += 1
    has_visited[row][col] = false
  end

  reach_num +=  sum_reachs(arrays, row + 1, col, rows, cols, has_visited, reach_num) +
    sum_reachs(arrays, row - 1, col, rows, cols, has_visited, reach_num) +
    sum_reachs(arrays, row, col + 1, rows, cols, has_visited, reach_num) +
    sum_reachs(arrays, row, col - 1, rows, cols, has_visited, reach_num)

  return reach_num
end

def less_than_k?(col, row, k)
  col = col.to_s
  col_size = col.size
  row = row.to_s
  row_size = col.size

  col_sum = 0
  (0..col_size-1).each do |index|
    col_sum += col[index].to_i
  end

  row_sum = 0
  (0..row_size-1).each do |index|
    row_sum += row[index].to_i
  end


  return (col_sum + row_sum) < k
end
