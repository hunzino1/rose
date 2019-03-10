##
#  如果是静态语言可能考虑的会比较多，但是面试中解决问题是第一位
# ruby很简单，这样才有效率，而不是去讲静态语言的逻辑
#
def num_of_1(num)
  num = num.to_s(2)
  return num.count("1")
end

# 静态语言解法
# 思路一： 依次判断num的最低位是不是1（与1作&运算）,然后右移num，知道num == 0

def num_of_1(num)
  total_count = 0
  while num != 0 do
    if num & 1 == 1
      total_count += 1
    end
    num >> 1
  end

  return total_count
end

##
# 思路二：上述算法存在的问题，假如num是负数，右移的规则是在左边不断填充符号位1，如此num一直不为0，会造成死循环；
#
#   故取相反的思路，让1进行左移运算，不断增大1，来判断依次判断num的最低位、次低位...最后一位,
#   （因为左移是 1、 10， 100， 1000）变化的
#   如此便不用考虑填充的问题了（1是正数）
#
def num_of_1(num)
  total_count = 0
  flag = 1
  # 64位的整数会循环64次
  while flage do
    if num & flag == 1
      total_flag += 1
    end

    flag = flag << 1
  end

  return total_count
end

##
# 思路三： num & (num - 1) 会将num二进制最右边第一个1给去掉；
# 分析见page102
#
def num_of_1(num)
  total_count = 0
  while num do
    total_count += 1
    num = num & (num - 1)
  end

  return total_count
end
