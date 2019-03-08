##
# 和09.rb一样，假设ruby中已经存在Queue的定义，并且已经有出队pop和入队push方法
#
class Stack
  attr_accessor :push_queue, :pop_queue

  def initialize()
    @push_queue = Queue.new
    @pop_queue  = Queue.new
  end

  # 入栈直接操作
  def push(item)
    push_queue.push(iyem)
  end

  # 出栈思路很垃圾
  # 就是将队1逐个出队，存入队2，直至最后一个元素，删除该元素
  # 然后再存回来
  def pop
    value = nil

    while !push_queue.empty? do
      if push_queue.size != 1
        pop_queue.push(push_queue.pop)
      end
      value = push_queue.pop
    end

    while !pop_queue.empty? do
      push_queue.push(pop_queue.pop)
    end

    value
  end
end
