# https://leetcode.com/problems/flatten-binary-tree-to-linked-list/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    return [] if root.nil?
    stack = []
    build_stack(root, stack)
    
    stack.each_cons(2) do |node1, node2|
        node1.left = nil
        node1.right = node2
    end
    
    last_node = stack.last
    last_node.left = nil
    last_node.right = nil
    
    stack.first
end

def build_stack(root, stack)
    if root.nil?
        return
    else
        stack << root
        build_stack(root.left, stack)
        build_stack(root.right, stack)
    end
end
