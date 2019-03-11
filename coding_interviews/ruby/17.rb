##
# 解决思路： 全排列‘0’ - ‘9’， 打印时去掉前面的0
#
# ruby知识点：
# a = (1..5) a[0] 是错误的；
#
# a = (1..5).to_a
# a = ('1'..'5').to_a
#
def print_n_num(n)
  if n <= 0
    return
  end

  ('0'..'9').to_a.each do |str|
    print_n_num_recusion(str, n, 0)
  end
end

def print_n_num_recusion(str, length, index)
  if index == length - 1
    print str
    return
  end

  ('0'..'9').to_a.each do |str|
    print_n_num_recusion(str, length, index + 1)
  end
end
