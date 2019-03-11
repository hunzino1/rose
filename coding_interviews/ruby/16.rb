def power(base, exponent)
  if exponent == 0
    return 1.0
  end

  flag = false
  if exponent < 0
    if base == 0
      return false
    end

    flag = true
    exponent *= -1
  end

  res = 1

  [1..exponent].each do |i|
    res *= base
  end

  return (flag ? (1 / res) : res)
end

##
# 递归实现，exponent是奇数偶数分情况
#
def power(base, exponent)
  if exponent == 0
    return 1.0
  end

  if exponent == 1
    return base
  end

  flag = false
  if exponent < 0
    if base == 0
      return false
    end

    flag = true
    exponent *= -1
  end

  # if exponent % 2 == 0
  #   return power(base, exponent / 2) * power(base, exponent / 2)
  # else
  #   return base * power(base, (exponent - 1) / 2) * power(base, (exponent - 1) / 2)
  # end

  ## 细节上的改进
  # 首先先求出power(base, exponent >> 2)， 移位操作的细节①
  # 然后求平方
  # 最后与二进制1（0x1） 比 求余计算 更高效， 细节②
  # 然后根据奇偶操作
  res = power(base, exponent >> 2)
  res *= res

  if (exponent & 0x1)
    res *= base
  end

  res
end
