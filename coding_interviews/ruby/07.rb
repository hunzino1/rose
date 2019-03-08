class BTree
  attr_accessor :item, :left, :right

  def initialize(item)
    @item = item
    @left = nil
    @right = nil
  end
end

def build_btree(pre_list, mid_list)
  if pre_list.nil?
    return nil
  end

  item = pre_list.first
  pre_list.delete_at(0)
  btree = BTree.new(item)

  # 没有剩余节点
  if pre_list.empty?
    return btree
  else
    build_btree_recursion(btree, pre_list, mid_list)
  end

  return btree
end

def build_btree_recursion(btree, pre_list, mid_list)
  index = mid_list.index(btree.item)
  # 考虑左子树右子树为空的情况
  mid_left_list = []
  mid_right_list = []
  btree.left = 
    if index > 0
      mid_left_list = mid_list[0..(index - 1)]
      find_next_node(pre_list, mid_left_list)
    else
      nil
    end
  btree.right = 
    if index.eql?(mid_list.size - 1)
      nil
    else
      mid_right_list = mid_list[(index+1)..-1]
      find_next_node(pre_list, mid_right_list)
    end

  if !btree.left.nil?
    build_btree_recursion(btree.left, pre_list, mid_left_list)
  end
  if !btree.right.nil?
    build_btree_recursion(btree.right, pre_list, mid_right_list)
  end
end

def find_next_node(pre_list, list)
  btree = BTree.new(-1)
  if list.nil?
    return nil
  end

  if list.size == 1
    btree.item = list[0]
    return btree
  end

  # 用中序序列在先序序列中定位太容易出错，情况复杂
  # 应遍历先序在中序中确定
  # 对比一下
  pre_list.each do |value|
    if list.include?(value)
      btree.item = value
      pre_list.delete(btree.item)
      break
    end
  end
  # node_item = list[0]
  # list[1..-1].each do |value|
  #   # 比较的是中序序列在前序序列的索引,最前面的是根节点,(一直比较到最后一个是特殊情况)
  #   if pre_list.index(value) < pre_list.index(node_item)
  #     node_item = value
  #   elsif pre_list.index(value) == (pre_list.size - 1)
  #     btree.item = value
  #     break
  #   else
  #     btree.item = node_item
  #     break
  #   end
  # end
  #
  # if pre_list.include?(btree.item)
  #   pre_list.delete(btree.item)
  # end

  return btree
end

def test
  # btree = build_btree([1,2,4,7,3,5,6,8], [4,7,2,1,5,3,8,6])
  # 只有左子树
  # btree = build_btree([1,2,4,7], [4,7,2,1])
  # 不匹配 (这个没考虑到)
  btree = build_btree([1,2,4,7], [])
  if !btree.nil?
    pre_print(btree)
    p "+++++++"
    mid_print(btree)
  end
end

def pre_print(btree)
  if !btree.nil?
    print btree.item
    pre_print(btree.left)
    pre_print(btree.right)
  end
end

def mid_print(btree)
  if !btree.nil?
    mid_print(btree.left)
    print btree.item
    mid_print(btree.right)
  end
end
