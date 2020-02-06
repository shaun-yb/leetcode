# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_unival_tree(root)
    traverse_result = traverse(root, root.val)
    puts "result: #{traverse_result}"
    return false if traverse_result === false
    return true
end

def traverse(node, root_val)
    return if node.nil?
    return false if node.val != root_val
    traverse_left = traverse(node.left, root_val)
    return traverse_left if traverse_left === false
    
    
    traverse_right = traverse(node.right, root_val)
    return traverse_right if traverse_right === false
end

# https://leetcode.com/problems/univalued-binary-tree/