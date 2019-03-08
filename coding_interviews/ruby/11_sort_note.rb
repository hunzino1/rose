# 
# 排序面试问题： 空间消费，平均时间， 最差时间
#
# 手写快排
# 手写 二分查找的递归、非递归
#

def once_quick_sort(array, left, right)
  if array.empty?
    return nil
  end

  flag = array[left]

  while left < right do
    while array[right] > flag do
      right -= 1
    end
    array[left] = array[right]
    left += 1

    while array[left] < flag do
      left += 1
    end
    array[right] = array[left]
    right -= 1
  end

  array[left] = flag
  left
end

# 思路：
# 一次快排一次只会固定一个数字位置
# 所以需要n次调用，所以递归调用自身
# 一次快排明显不是一个递归函数，递归是递归快排本身
def quick_sort(array, left, right)
  if array.empty?
    return nil
  end

  index = once_quick_sort(array, left, right)
  if index > 0
    quick_sort(array, 0, index - 1)
  end
  if index < right
    quick_sort(array, index + 1, right)
  end
end
