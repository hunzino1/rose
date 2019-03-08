##
# 链表定义
#
class LinkNode
  attr_accessor :item, :next

  def initialize(item)
    @item = item      # 用来保存信息
    @next = nil       # 用来指向下一个节点
  end
end

# 思路一： 找到尾指针，然后尾指针指向头指针形成一个闭环
# 思路二： 头插法，形成一个新的链表

##
#但是一般打印只是只读操作，上述思路需要找面试官确认
#
#思路三： 反向打印，栈的思想后进先出，可以维护一个栈
#思路四： 既然栈能实现，递归也能实现，但是注意内存问题
#

# 栈实现
def print_reverse(pre_head)
  if pre_head.next.nil?
    return false
  end

  stack = Array.new
  top = -1

  node = pre_head.next
  while node do
    stack << node.item
    node = node.next
    top += 1
  end

  # 充分利用ruby语法
  res = stack.reverse()

  res.each do |value|
    print value
  end
end

# 递归
def print_recursion(node)
  # 这样写的结果[1,2,3] 只会打印3
  # if node.next.nil?
  #   print node.item
  # else
  #   print_recursion(node.next)
  # end

  if !node.nil?
    if !node.next.nil?
      print_recursion(node.next)
    end

    print(node.value)
  end
end
