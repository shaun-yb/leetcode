# https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def bst_to_gst(root)
    traverse(root, 0)
    root
end

def traverse(root, parent_sum)
    return if root.nil?
    right_tree_sum = subtree_sum(root.right)
    root.val = root.val + parent_sum + right_tree_sum
    
    traverse(root.left, root.val)
    traverse(root.right, parent_sum)
end

def subtree_sum(root)
    return 0 if root.nil?
    return root.val + subtree_sum(root.left) + subtree_sum(root.right)
end
