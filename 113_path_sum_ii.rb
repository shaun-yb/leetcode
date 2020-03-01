# https://leetcode.com/problems/path-sum-ii/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Integer[][]}
def path_sum(root, sum)
    return [] if root.nil?
    sets = []
    traverse(root, [], sets)
    
    sets.select! do |set|
        set.sum == sum
    end
    
    sets
end

def traverse(root, set, sets)
    if root.left.nil? && root.right.nil?
        set << root.val
        sets << set
        return
    end
    
    if !root.left.nil?
        traverse(root.left, set.dup << root.val, sets)
    end
    
    if !root.right.nil?
        traverse(root.right, set.dup << root.val, sets)
    end
end
