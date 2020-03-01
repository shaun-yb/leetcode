# https://leetcode.com/problems/remove-element/
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    return 0 if nums.empty?
    
    nums.select! do |num|
        num != val
    end
    
    nums.length
end
