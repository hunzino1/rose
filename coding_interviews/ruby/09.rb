##
# ruby中没有stack的数据结构，
# 对于本道题目，先模拟出一个stack，再用satck定义一个栈是没有意义的
# 直接假设stack，有push和pop方法
#
class Queue
  attr_accessor :head_stack, :tail_stack

  def initialize()
    @head_stack = Stack.new    # 出队
    @tail_stack = Stack.new    # 入队
  end

  # 入队操作
  # 直接入栈即可，不考虑其他因素
  def append_tail(item)
    tail_stack.push(item)
  end

  #出队操作
  #
  def delete_head()
    if !head_stack.empty?
      return head_stack.pop
    end
    if !tail_stack.empty?
      while !tail_stack.empty? do
        head_stack.push(tail_stack.pop)
      end
      return head_stack.pop
    end

    nil
  end
end
