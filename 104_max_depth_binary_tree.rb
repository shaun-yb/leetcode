# https://leetcode.com/problems/maximum-depth-of-binary-tree/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    return 0 if root.nil? 
    left = root.left.nil? ? 1 : traverse(root.left, 2)
    right = root.right.nil? ? 1 : traverse(root.right, 2)
    
    max(left, right)
end

def traverse(node, depth)
    left = node.left.nil? ? depth : traverse(node.left, depth+1)
    right = node.right.nil? ? depth : traverse(node.right, depth+1)
    
    max(left,right)
end

def max(a,b)
    a > b ? a : b
end