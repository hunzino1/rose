##
# 判断一个数是不是2的幂
# 如果num是2的整数次方，那么num的二进制表示中只有一位是1；
# num & (num - 1) 是不是0， 因为去掉了唯一一个1
#
def is_2_power?(num)
  return !(num & (num - 1))
end

##
# m和n两个数， m需要变动几次二进制才会变成n
# 步骤：
# 1、异或得出num
# 2、计算num中1的个数
#
def change_times_m_2_n(m, n)
  total_count = 0
  xor = m ^ n
  while xor do
    total_count += 1
    xor = xor & (xor - 1)
  end

  return total_count
end
