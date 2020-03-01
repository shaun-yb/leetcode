# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# https://leetcode.com/problems/binary-tree-paths/
# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
    return [] if root.nil?
    sets = []
    traverse(root, "", sets)
    sets
end

def traverse(root, path_string, sets)
    if root.left.nil? && root.right.nil?
        path_string += root.val.to_s
        sets << path_string
        return
    end
    
    path = "#{root.val}->"
    
    if !root.left.nil?
        traverse(root.left, path_string.dup + path, sets)
    end
    
    if !root.right.nil?
        traverse(root.right, path_string.dup + path.to_s, sets)
    end
end
