# https://leetcode.com/problems/range-sum-of-bst/submissions/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def range_sum_bst(root, l, r)
    traverse(root, 0, l, r)
end

def traverse(root, sum, l, r)
    return sum if root.nil?
    val = root.val >= l && root.val <= r ? root.val : 0
    traverse(root.left, sum, l, r) + traverse(root.right, sum, l,r) + val
end
