# 递归
def fabonacci(n)
  if n == 0 || n == 1
    return n
  end

  return fabonacci(n-1) + fabonacci(n-2)
end

# 非递归
# 节省空间：
#   res_of_fabonacci长度只有2即可
#   以为当前值只和前两位有关
def fabonacci(n)
  if n == 0 || n == 1
    return n
  end

  res_of_fabonacci = Array.new
  res_of_fabonacci << 0
  res_of_fabonacci << 1

  (2..n).each do |index|
    res_of_fabonacci << res_of_fabonacci[index - 1] + res_of_fabonacci[index - 2]
  end

  return res_of_fabonacci[n]
end
