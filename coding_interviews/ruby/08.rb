def BTree
  attr_accessor :item, :left, :right, :pre

  def initialize(item)
    @item = item
    @left = nil
    @right = nil
    @pre = nil
  end
end

def find_next_node_of_mid_list(btree, node)
  if node.nil?
    return nil
  end

  pre_node = node.pre
  right_child_node = node.right
  if right_child_node.nil?
  # 查找父节点
    return find_next_node_in_pre_nodes(pre_node, node)
  else
  # 查找右子树中的第一个节点(最左节点)
    if right_child_node.left
      while right_child_node.left do
        right_child_node = right_child_node.left
      end
    end

    return right_child_node
  end
end

# 父节点pre查找
# pre是第一个node位于其左子树中的父节点
def find_next_node_in_pre_nodes(pre_node, node)
  return nil if pre_node.nil?
  return pre_node if pre_node.left.eql?(node)
  return find_next_node_in_pre_nodes(pre_node.pre, pre_node)
end
