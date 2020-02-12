# https://leetcode.com/problems/minimum-depth-of-binary
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
def min_depth(root)
    return 0 if root.nil?
    dfs(root, 0)
end

def dfs(root, count)
    max_val = 99999999999

    # if the left subtree is non-existant, we want to make sure we do not go down it
    # because that way, we don't want a false flag thinking that we don't need to go 
    # down the right subtree
    
    left_depth = root.left.nil? ? max_val : dfs(root.left, count)
    right_depth = root.right.nil? ? max_val : dfs(root.right, count)
    
    if root.left.nil? && root.right.nil?
        # this node is a leaf.  We don't want to return the punishment value (e.g. max_val).
        # instead, return 1 to mark the last item in this tree.
        return 1
    else
        return 1 + [left_depth, right_depth].min    
    end
end
