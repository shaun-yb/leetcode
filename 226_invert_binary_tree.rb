# https://leetcode.com/problems/invert-binary-tree/

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
def invert_tree(root)
    perform_swap(root)
end

def perform_swap(root)
    return if root.nil?

    left_subtree = root.left
    right_subtree = root.right

    root.left = right_subtree
    root.right = left_subtree

    perform_swap(root.left)
    perform_swap(root.right)
    return root
end