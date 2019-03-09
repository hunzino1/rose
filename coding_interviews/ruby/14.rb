##
# length: 绳子长度
# m:      裁剪段数
#
def max_multiply_of_cut_choice(length)
  if length <= 0
    return 0
  end

  if length < 2
    return length
  end

  # 至少一刀
  if length == 3
    return 2
  end
  ##
  # 本题目并不能直接找到f(m) 和 f(m - 1)的直接关系；
  # 当找不到相邻元素m、m - 1之间的推导关系时，这时的思考方向应该是确定一个基本元素，
  # 即假定第一次或者最后一次操作的结果（遍历），根据难易程度选择first or last，
  # 如此边营造出了f(m) 和 f(m - 1)之间的推导关系。
  # 以上是动态规划中递推表达式不易得出是的常用思考方式。
  #
  # 回归本题，
  # 假设f(m)的第一次裁剪长度是i(0 < i < n),如此便轻易得到递推关系式：
  # f(n, m) = max(i * f(n - i, m - 1))
  # 以上写的公式并不是很贴合本例，主要是讲解思考方向
  #
  # 上述本题公式不对，第一刀分 0-i, i - n 之后可能还会再裁剪i的部分，
  # 故 f(n) = max(f(i) * f(n - 1))
  # 其中f(n)是指长度为n的绳子裁剪成若干段后的最大乘积，注意：裁剪次数是不限定的。

  # cut_arrays 保存的是长度i(0..m)的最大裁剪乘积结果
  cut_arrays = [0, 1, 2, 2]
  # 裁剪次数遍历2..m
  [4..length].each do |total_length|
    max_res = 0
    # 第一次裁剪长度从1到length - 1
    [1..total_length - 1].each do |cut_length|
      cur_cut_max = cut_arrays[cut_length] * cut_arrays[length - cut_length]
      if max_res < cur_cut_max
        max_res = cur_cut_max
      end
    end
    cut_arrays << max_res
  end
  return cut_arrays[length]
end
